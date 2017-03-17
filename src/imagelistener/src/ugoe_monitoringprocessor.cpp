#include "ugoe_monitoringprocessor.h"
#include <string> 
#include "boost/filesystem.hpp"
#include <ros/ros.h>
#include <boost/lexical_cast.hpp>
#include <iostream>

#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
/*
* implementation of find_templates
*/

 void Monitoring::find_template(int template_id, cv::Mat & template_found)
 {
   try
   {
     std::string s = boost::lexical_cast<std::string>(template_id);
     std::string path_t = path_to_templates+"/"+s+".png";
     std::cout<<path_t<<std::endl;
     boost::filesystem::path
     targetFile(path_to_templates+"/"+s+".png");
     if(boost::filesystem::exists(targetFile) &&
     boost::filesystem::is_regular_file(targetFile)) 
     {
      
       template_found = cv::imread(targetFile.string()); 
       
     }
   }
   catch (const boost::filesystem::filesystem_error& ex)
   {
     std::cout<<ex.what()<<std::endl;
   }
 }

 /*
    * this function is called if the template is found in the current image
    *  according to the operation_id the correspondent analysis routines are called 
    *
    */
void  Monitoring:: analyzeROI(cv::Mat & roi, cv::Mat & templ, int op_id, imagelistener::exampleImageProcessing:: Response & res)
{
  if(op_id == 1) // analyze black ball 
  {
    // detect  roi characteristics
    cv::RNG rng(12345);
    cv::Mat tmp;
    CLAHE_HistEq(roi, tmp);
   // cvtColor(tmp, tmp, CV_BGR2HSV);
    //Mat hsv[3];   //destination array
    //cv::split(tmp,hsv);//split source  
   // cv::imshow("vision hsv[0]", hsv[0]);
   // cv::waitKey(0);
   // cv::imshow("vision hsv[1]", hsv[1]);
   // cv::waitKey(0);
   // cv::imshow("vision hsv[2]", hsv[2]);
   // cv::waitKey(0);
    // Create a kernel that we will use for accuting/sharpening our image
  /*  cv::Mat kernel = (cv::Mat_<float>(3,3) <<
            1,  1, 1,
            1, -8, 1,
            1,  1, 1); // an approximation of second derivative, a quite strong kernel
    // do the laplacian filtering as it is
    // well, we need to convert everything in something more deeper then CV_8U
    // because the kernel has some negative values,
    // and we can expect in general to have a Laplacian image with negative values
    // BUT a 8bits unsigned int (the one we are working with) can contain values from 0 to 255
    // so the possible negative number will be truncated
    cv::Mat imgLaplacian;
    cv::Mat sharp = tmp; // copy source image to another temporary one
    cv::filter2D(sharp, imgLaplacian, CV_32F, kernel);
    tmp.convertTo(sharp, CV_32F);
    cv::Mat imgResult = sharp - imgLaplacian;
    // convert back to 8bits gray scale
    imgResult.convertTo(imgResult, CV_8UC3);
    imgLaplacian.convertTo(imgLaplacian, CV_8UC3);
    imshow( "Laplace Filtered Image", imgLaplacian );
    imshow( "New Sharped Image", imgResult );
    cv::waitKey(0);
    return ;
*/
    cv::Mat hsv;
    cvtColor(tmp, hsv, CV_BGR2HSV);

    cv::inRange(hsv, cv::Scalar(0, 0, 0, 0), cv::Scalar(180, 255, 30, 0), hsv);
  

    std::vector<std::vector<cv::Point> > contours;
    std::vector<std::vector<cv::Point> > contours_hull;
    std::vector<cv::Vec4i> hierarchy;
    findContours(hsv, contours, hierarchy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);

    double la = -1;
    int lci = 0;
    cv:: Rect bounding_rect;
    for( size_t i = 0; i< contours.size(); ++i ) // iterate through each contour. 
    {
      double a=cv::contourArea( contours[i],false);  //  Find the area of contour
      if(a>la){
        la=a;
        lci=i;                //Store the index of largest contour
        bounding_rect=cv::boundingRect(contours[i]); // Find the bounding rectangle for biggest contour
      }
    }
    
    cv::Mat mask = cv::Mat::zeros( tmp.size(), CV_8UC1 );

    cv::Mat mask_hull = cv::Mat::zeros( tmp.size(), CV_8UC1 );
    std::vector<cv::Point> convexHullPoints =  contoursConvexHull(contours, lci);
    contours_hull.push_back(convexHullPoints);
   // polylines( mask, convexHullPoints, true, Scalar(255),2);
    cv::drawContours( mask, contours, lci, 255,  CV_FILLED, 8, hierarchy, 0, Point() );
    cv::Moments mu = cv::moments( contours[lci], false );
    cv::Point2f mc = Point2f( static_cast<float>(mu.m10/mu.m00) , static_cast<float>(mu.m01/mu.m00) );
    cv::drawContours( mask_hull, contours_hull, 0, 255,  CV_FILLED, 8, hierarchy, 0, Point() );

    cv::imshow("vision tmp", mask);
    cv::waitKey(0);


    for(int y = 0; y<mask.rows;++y)
    {
      for(int x = 0; x<mask.cols;++x)
      {
        uchar &u = mask.at<uchar>(y,x);

        uchar &u_hull = mask_hull.at<uchar>(y,x);
        if(u== 255)
          u = GC_FGD;
        else
          {
          if(u_hull == 0)
              u = GC_BGD;
          else
             { 
             if(u==0 && u_hull>0)
                {
                  //if( pointPolygonTest(contours[lci], Point2f(x,y), false)>=0)
                    u= GC_PR_FGD;
                  /*else
                  {
                      u= GC_PR_BGD;
                  }*/
                }
             }
          }
        
      }
    }

    cv::Mat result; // segmentation result (4 possible values)
    cv::Mat bgModel,fgModel; // the models (internally used)
 
    // GrabCut segmentation
    cv::grabCut(tmp,    // input image
        mask,   // segmentation result
        bounding_rect,// rectangle containing foreground 
        bgModel,fgModel, // models
        10,        // number of iterations
        cv::GC_INIT_WITH_MASK/*cv::GC_INIT_WITH_RECT*/); // use rectangle
    
/*
    // let's get all foreground and possible foreground pixels
cv::Mat1b mask_fgpf = ( markers == cv::GC_FGD) | ( markers == cv::GC_PR_FGD);
// and copy all the foreground-pixels to a temporary image
cv::Mat3b tmp = cv::Mat3b::zeros(img.rows, img.cols);
img.copyTo(tmp, mask_fgpf);
// show it
cv::imshow("foreground", tmp);
cv::waitKey(0);
*/

    // Get the pixels marked as likely foreground  
    cv::compare(mask,cv::GC_PR_FGD | cv::GC_FGD,result,cv::CMP_EQ);
    // Generate output image
    cv::Mat foreground(tmp.size(),CV_8UC3,cv::Scalar(255,255,255));
    tmp.copyTo(foreground,result); // bg pixels not copied
 
    // draw rectangle on original image
    cv::rectangle(tmp, bounding_rect, cv::Scalar(255,255,255),1);
    cv::circle( drawing, mc[i], 4, cv::Scalar(), -1, 8, 0 );
    cv::namedWindow("Image");
    cv::imshow("Image",tmp);
     cv::waitKey(0);
 
    // display result
    cv::namedWindow("Segmented Image");
    cv::imshow("Segmented Image",foreground);
    cv::waitKey(0);
    Mat labels, stats, centroids;
    int nLabels = connectedComponentsWithStats	(	result, labels,stats, centroids);

    // detect the inner circle of the hexagon, since it is the most visible
    int i_max_area = 0;
    int i_max_area_cc = -1;
    for(int i = 1; i<nLabels; ++i)
    {
      
      float area = stats.at<int>(i,CC_STAT_AREA);
      std::cout<< "area:"<< area<<std::endl;
      if(area<minArea || area>maxArea)
        continue;
      else
      {
        if(i_max_area<stats.at<int>(i,CC_STAT_AREA))
        {
          i_max_area = stats.at<int>(i,CC_STAT_AREA);
          i_max_area_cc = i;
        }
      }
    }


  /*
    /// Draw contours
    tmp = cv::Mat::zeros( tmp.size(), CV_8UC3 );
    Scalar color = cv::Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
    std::vector<cv::Point>  contours_approx;
    approxPolyDP(contours[lci],contours_approx,10,true);
    contours_poly.push_back(contours_approx);

    cv::drawContours( tmp, contours_poly, 0, color,  CV_FILLED, 8, hierarchy, 0, Point() );
    for(int y = 0; y<tmp.rows;++y)
    {
      for(int x = 0; x<tmp.cols;++x)
      {
        cv::Vec3b color = tmp.at<cv::Vec3b>(cv::Point(x,y));
        if(y >=bounding_rect.y + 3.0/4.0*bounding_rect.height)
        {
          color[0] = 0;
          color[1] = 0;
          color[2] = 0;
          tmp.at<Vec3b>(Point(x,y)) = color;
        }
      }
    }
    
    //cv::rectangle(tmp, bounding_rect,  Scalar(0,255,0),1, 8,0);  
    //std::vector<cv::Point> convexHullPoints =  contoursConvexHull(contours, lci);
    //polylines( tmp, convexHullPoints, true, Scalar(0,0,255), 2 );

    cv::imshow("vision roi", tmp);
    cv::waitKey(0);


    cv::drawContours( tmp, contours_poly, 0, cv::Scalar(255,0,0), 2, 8, hierarchy, 0, Point() );
    //----------------------------------------------------------------------------------------------------
    cv::Mat tmp_temp;
    CLAHE_HistEq(templ, tmp_temp);
    cvtColor(tmp_temp, tmp_temp, CV_BGR2HSV);
    cv::inRange(tmp_temp, cv::Scalar(0, 0, 0, 0), cv::Scalar(180, 255, 30, 0), tmp_temp);
    std::vector<std::vector<cv::Point> > contours_temp;
    std::vector<cv::Vec4i> hierarchy_temp;
    findContours(tmp_temp, contours_temp, hierarchy_temp, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);

    double la_temp = -1;
    int lci_temp = 0;
    cv:: Rect bounding_rect_temp;
    for( size_t i = 0; i< contours_temp.size(); ++i ) // iterate through each contour. 
    {
      double a=cv::contourArea( contours_temp[i],false);  //  Find the area of contour
      if(a>la_temp)
      {
        la_temp=a;
        lci_temp=i;                //Store the index of largest contour
        bounding_rect_temp=cv::boundingRect(contours_temp[i]); // Find the bounding rectangle for biggest contour
      }
    }
    /// Draw contours
    tmp_temp = cv::Mat::zeros( tmp_temp.size(), CV_8UC3 );
    Scalar color_temp = cv::Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
    cv::drawContours( tmp_temp, contours_temp, lci_temp, color_temp, 2, 8, hierarchy_temp, 0, Point() );
    cv::rectangle(tmp_temp, bounding_rect_temp,  Scalar(0,255,0),1, 8,0);  
    std::vector<cv::Point> convexHullPoints_temp =  contoursConvexHull(contours_temp, lci_temp);
    polylines( tmp_temp, convexHullPoints_temp, true, Scalar(0,0,255), 2 );

    //CV_CONTOURS_MATCH_I1 , CV_CONTOURS_MATCH_I2 or CV_CONTOURS_MATCH_I
    double match_res = cv::matchShapes(contours_temp[lci_temp], contours[lci], CV_CONTOURS_MATCH_I1,0);

    ROS_INFO("Matching result %f",match_res);

    cv::imshow("vision roi", tmp);
    cv::waitKey(0);

    cv::imshow("vision template", tmp_temp);
    cv::waitKey(0);*/
  }
}

/*
* convex hull from the contour points
* index is the contour index, for which we want to build the convex hull
*/

std::vector<cv::Point> Monitoring::contoursConvexHull( std::vector<std::vector<cv::Point> > & contours, size_t index )
{
    
  std::vector<cv::Point> result;
  std::vector<cv::Point> pts;
  if(index>0 && index< contours.size())
  {
    for ( size_t j = 0; j< contours[index].size(); j++)
      pts.push_back(contours[index][j]);
  }
  else
  {
    for ( size_t i = 0; i< contours.size(); i++)
      for ( size_t j = 0; j< contours[i].size(); j++)
        pts.push_back(contours[i][j]);
  }
  cv::convexHull( pts, result );
  return result;
}




/*
* implementation of the main monitoring function
*/

void  Monitoring:: execute_monitoring(
                          imagelistener::exampleImageProcessing:: Request & req,
                          imagelistener::exampleImageProcessing:: Response & res,
                          cv::Mat & current_image)
{
      cv::Mat templ_image;
      find_template(req.ID_Template, templ_image);
      if(!templ_image.empty())
      {
        // try to detect template in the current image
        /// Source image to display
        cv::Mat img_display, result;
        current_image.copyTo( img_display );

        /// Create the result matrix
        int result_cols =  current_image.cols - templ_image.cols + 1;
        int result_rows = current_image.rows - templ_image.rows + 1;

        result.create( result_rows, result_cols, CV_32FC1 );

        /// Do the Matching and Normalize
        matchTemplate( current_image, templ_image, result, CV_TM_CCOEFF_NORMED );
       // normalize( result, result, 0, 1, NORM_MINMAX, -1, Mat() );

        /// Localizing the best match with minMaxLoc
        double minVal; double maxVal; Point minLoc; Point maxLoc;
        Point matchLoc;

        minMaxLoc( result, &minVal, &maxVal, &minLoc, &maxLoc, Mat() );
        matchLoc = maxLoc;
        std::cout<<"Max val matching:" <<maxVal<< " Min val matching:"<< minVal << std::endl;
        std::cout<<"Match loc:[x,y]:"<<matchLoc.x<<" "<<matchLoc.y<<std::endl;

        if(maxVal>0.8)
        {
          ROS_INFO("Template is detected! Start comparison according to the operation sent...");
          
          cv::Rect r (matchLoc, Point( matchLoc.x + templ_image.cols , matchLoc.y + templ_image.rows ));
          cv::Mat roi = img_display(r).clone();
          analyzeROI(roi, templ_image, req.ID_Operation, res);
/*          rectangle( img_display, matchLoc, Point( matchLoc.x + templ_image.cols , matchLoc.y + templ_image.rows ), CV_RGB(255, 255, 255), 0.5 );*/
      //    cv::namedWindow("MatchingResult",CV_WINDOW_NORMAL);
      //    cv::imshow("MatchingResult", roi);
      //    cv::waitKey(0);

        }
        else
        if(maxVal<=0.8&& maxVal>0.5)
        {
            ROS_INFO("Template is found, but the detail is probably  damaged");
            res.Im_Width = current_image.cols;
            res.Im_Height = current_image.rows;
            res.Mon_result.operation_type = (long int)req.ID_Operation;
            res.Mon_result.detail_detected = 1;
            res.Mon_result.detail_ok = 0;
        }
        else
        {
          ROS_ERROR("No template is present in the image!!!");
          res.Im_Width = -1;
          res.Im_Height = -1;
          res.Mon_result.operation_type = (long int)req.ID_Operation;
          res.Mon_result.detail_detected = -1;

        }

      }
      else
      {
        ROS_ERROR("Template image is not found!");
        res.Im_Width = -1;
        res.Im_Height = -1;
        res.Mon_result.operation_type = (long int)req.ID_Operation;
        res.Mon_result.detail_detected = -1;
      }
}


//-------------------------------------------------------------------------------------------
// OpenCV routine wrappers

// Histogram equalization
void Monitoring::CLAHE_HistEq(cv::Mat& img_, cv::Mat & out_)
{
  cv::Mat lab_image;
  cv::cvtColor(img_, lab_image, CV_BGR2Lab);

  // Extract the L channel
  std::vector<cv::Mat> lab_planes(3);
  cv::split(lab_image, lab_planes);  // now we have the L image in lab_planes[0]

  // apply the CLAHE algorithm to the L channel
  cv::Ptr<cv::CLAHE> clahe = cv::createCLAHE();
  clahe->setClipLimit(4);
  cv::Mat dst;
  clahe->apply(lab_planes[0], dst);

  // Merge the the color planes back into an Lab image
  dst.copyTo(lab_planes[0]);
  cv::merge(lab_planes, lab_image);

  // convert back to RGB
  cv::Mat image_clahe;
  cv::cvtColor(lab_image, out_, CV_Lab2BGR);
}
//---------------------------------------------------------------------------------------------
// blurring

void Monitoring::blurring(cv::Mat& in_, cv::Mat& out_, int size, int alg)
{
  switch(alg)
  {
      case 1:  // Homogeneous blur
        cv::blur( in_, out_, Size( size, size ), Point(-1,-1));
        break;
      case 2: // Gaussian blur
        cv::GaussianBlur(in_, out_, Size( size, size ), 0, 0 );
        break;
      case 3: // Median blur
        cv::medianBlur ( in_, out_, size );
        break;
      case 4: // Bilateral filter
        cv::bilateralFilter ( in_, out_, size, size*2, size/2 );
        break;
      case 5: //nl means denoising
        cv::fastNlMeansDenoising(in_, out_, 3, size);
        break;
  }
}
//------------------------------------------------------------------------------------------
// auto canny (no parameters)
void Monitoring::autoCanny(cv::Mat& img_, cv::Mat & out_)
{
	cv::Mat gray;
  cv::Mat blurred;
  cv::cvtColor(img_, gray, cv::COLOR_BGR2GRAY);
  blurring(gray,blurred,11,2);
  cv::Scalar	v = median(blurred);
  cv::RNG rng(12345);
  float sigma = 0.55;//0.33;
	int lower = int(std::max(0.0, (1.0 - sigma) * v[0]));
	int upper = int(std::min(255.0, (1.0 + sigma) * v[0]));
  std::cout<< lower <<" "<< upper<<std::endl;
//  int lower = 100;
//  int upper = 200;
  std::vector<std::vector<cv::Point> > contours;
  std::vector<cv::Vec4i> hierarchy;

  cv::Canny( blurred, blurred, lower, upper, 3 );
  /// Find contours
  cv::findContours( blurred, contours, hierarchy, CV_RETR_TREE, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

  /// Draw contours
  out_ = cv::Mat::zeros( blurred.size(), CV_8UC3 );
  for( size_t i = 0; i< contours.size(); i++ )
  {
    Scalar color = cv::Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
    cv::drawContours( out_, contours, i, color, 2, 8, hierarchy, 0, Point() );
  }
}

//--------------------------------------------------------------------------------------------
// return median value for each channel of image
cv::Scalar Monitoring::median (cv::Mat & image)
{
  int ch = image.channels();
  double m=(image.rows*image.cols)/2;
  std::vector<int> bins;

  cv::Scalar med;
  for(int i = 0; i<ch;++i)
  {
    med.val[i]=-1;
    bins.push_back(0);
  }
  int histSize = 256;
  float range[] = { 0, 256 } ;
  const float* histRange = { range };
  bool uniform = true;
  bool accumulate = false;
  std::vector<cv::Mat> hists;
  std::vector<cv::Mat> channels;
  cv::split( image, channels );
  for (size_t i = 0; i< channels.size();++i)
  {
    cv::Mat hist;
    cv::calcHist( &channels[i], 1, 0, cv::Mat(), hist, 1, &histSize, &histRange, uniform, accumulate );
    hists.push_back(hist);
  }

  bool flag = true;
  for (int i=0; i<256 && flag;i++)
  {
    for(int j = 0; j<ch;++j)
    {
      if (med.val[j]>=0) 
        {
          flag = false;
          break;
        }
      bins[j] = bins[j]+ cvRound(hists[j].at<float>(i));  
      if(bins[j]>m && med.val[j]<0)
          med.val[j] = i;
    }
  }

  return med;
}


