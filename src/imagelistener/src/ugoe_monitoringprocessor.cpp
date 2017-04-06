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

 void Monitoring::find_template(int template_id, cv::Mat & template_found, cv::Mat & mask_found)
 {
   try
   {
     std::string s = boost::lexical_cast<std::string>(template_id);
     std::string path_t = path_to_templates+"/"+s+".png";
     std::string path_t_mask = path_to_templates+"/"+s+"_mask.png";
     std::cout<<path_t<<std::endl;
     boost::filesystem::path
     targetFile(path_t);
    
     boost::filesystem::path
     targetMaskFile(path_t_mask);


     if(boost::filesystem::exists(targetFile) &&
     boost::filesystem::is_regular_file(targetFile)&& boost::filesystem::exists(targetMaskFile) &&
     boost::filesystem::is_regular_file(targetMaskFile)) 
     {
       template_found = cv::imread(targetFile.string()); 
       mask_found = cv::imread(targetMaskFile.string()); 
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
void  Monitoring:: analyzeROI(cv::Mat & curr_img,
                              cv::Mat & roi, 
                              cv::Mat & templ, 
                              cv::Mat & mask,
                              int op_id, 
                              imagelistener::exampleImageProcessing:: Response & res,
                              cv::Mat & res_out,
                              imagelistener::imageViewing  & srv)
{
  if(op_id == 1) // analyze black ball 
  {
      cv::Mat gray;
      cv::Mat img = roi.clone();
      cv::cvtColor(roi, gray, COLOR_BGR2GRAY);
      blurring(gray, gray, 15,3);
      std::vector<cv::Vec3f> circles;
      HoughCircles(gray, circles, HOUGH_GRADIENT, 1,
      gray.rows, // change this value to detect circles with different distances to each other
      100, 30, 150, 200 // upper thresh for canny, thresh for circle center, min radius, max radius - > these parameters must be set by the user and read from db!!!!
      );
      for( size_t i = 0; i < circles.size(); i++ )
      {
        cv::Vec3i c = circles[i];
        //cout<<"circle: center "<<c[0]<<" "<<c[1]<<" radius:"<<c[2]<<std::endl;
        circle( img, Point(c[0], c[1]), c[2], Scalar(0,0,255), 3, LINE_AA);
        circle( img, Point(c[0], c[1]), 2, Scalar(0,255,0), 3, LINE_AA);
      }
     // cv::imshow("detected circles", img);
     // cv::waitKey(0);
      res_out = img.clone();

      if(circles.size()==1)
      {
        ROS_INFO("The detail is OK");
        srv.request.detailStatus = 1;
        res.Mon_result.detail_detected = 1;
        res.Mon_result.detail_ok = 1;
      }
      else
      {
        ROS_INFO("The black ball is damaged!");
        res.Mon_result.detail_detected = 1;
        res.Mon_result.detail_ok = 0;
        srv.request. detailStatus = 0;
      }

  }
  if(op_id== 2) // analyze big hole 
  {
      cv::Mat masked_templ;
      templ.copyTo(masked_templ,mask);
      cv::Mat masked_roi;
      roi.copyTo(masked_roi,mask);

      cv::cvtColor(masked_roi, masked_roi, CV_BGR2HSV);
      cv::cvtColor(masked_templ, masked_templ, CV_BGR2HSV);

      cv::Mat diffImage;
      cv::absdiff(masked_roi, masked_templ, diffImage);

      cv::Mat foregroundMask = cv::Mat::zeros(diffImage.rows, diffImage.cols, CV_8UC1);

      float threshold = 100.0f;
      float dist;

      for(int j=0; j<diffImage.rows; ++j)
        for(int i=0; i<diffImage.cols; ++i)
        {
          cv::Vec3b pix = diffImage.at<cv::Vec3b>(j,i);

          dist = (pix[0]*pix[0] + pix[1]*pix[1] + pix[2]*pix[2]);
          dist = sqrt(dist);

          if(dist>threshold)
          {
            foregroundMask.at<unsigned char>(j,i) = 255;
          }
        }
      int nonZCnt = cv::countNonZero(foregroundMask);
      //roi.copyTo(res_out, foregroundMask);
      res_out = diffImage.clone(); 
      
      if(nonZCnt<10000)
      {        
        ROS_INFO("The detail is OK");
        srv.request.detailStatus = 1;
        res.Mon_result.detail_detected = 1;
        res.Mon_result.detail_ok = 1;
      }
      else
      {
        ROS_INFO("The hole is damaged!");
        res.Mon_result.detail_detected = 1;
        res.Mon_result.detail_ok = 0;
        srv.request. detailStatus = 0;
      }
  }
  if(op_id==3)
  {
    Mat copy_bgr_image;
    
    // denoising
    cv::blur(roi,copy_bgr_image,Size(5,5));
    // find the reflection regions (white color)
    cv::Mat hsv_image;
    cv::Mat mask;
    cv::cvtColor(copy_bgr_image, hsv_image, cv::COLOR_BGR2HSV);
    cv::inRange(hsv_image, cv::Scalar(0, 0, 255-15, 0), 
        cv::Scalar(255, 15, 255, 0), 
        mask);

    Mat labels, stats, centroids;
    int nLabels = connectedComponentsWithStats	(	mask, labels,stats, centroids);
    int max_area = 0;
    int i_max_cc = -1;
    int lx_max_cc = 0;
    for(int i = 1; i<nLabels; ++i)
    {
      float area = stats.at<int>(i,CC_STAT_AREA);
      int lx = stats.at<int>(i,CC_STAT_LEFT);
     // int ty = stats.at<int>(i,CC_STAT_TOP);
     // int h = stats.at<int>(i,CC_STAT_HEIGHT);
     // int w = stats.at<int>(i,CC_STAT_WIDTH);
     // int rx = lx+w;
     // int by = ty+h;
      if(max_area< area )
      {
        max_area = area;
        i_max_cc = i;
        lx_max_cc = lx;
      }
    }
    Mat only2;
    compare(labels, i_max_cc, only2, CMP_EQ);
    for(int i = 1; i<nLabels; ++i)
    {
      int lx = stats.at<int>(i,CC_STAT_LEFT);
      if(fabs(lx-lx_max_cc)<50)
      {
        Mat only1;
        compare(labels, i, only1, CMP_EQ);
        bitwise_or(only2, only1, only2);
      }
    }
    res_out = roi.clone();

    Rect r = boundingRect(only2);
    rectangle( res_out, r.tl(), r.br(), Scalar(0,255,0), 2, 8, 0 );
    ROS_INFO("Screw length (px) %d",r.height);
    srv.measurment = r.height;
    srv.detailStatus = 1;

 
  //  Mat color_mask;
//    cvtColor(only2,color_mask, CV_GRAY2RGB);
//    addWeighted(color_mask, 0.4, roi, 1 - 0.4, 0, res_out);

//    namedWindow( "h", CV_WINDOW_NORMAL );
  //  imshow( "h", mask);
    }
}




/*
* implementation of the main monitoring function
*/

void  Monitoring:: execute_monitoring(
                          imagelistener::exampleImageProcessing:: Request & req,
                          imagelistener::exampleImageProcessing:: Response & res,
                          cv::Mat & current_image,
                          cv::Mat & templ_out,
                          cv::Mat & roi_out,
                          cv::Mat & res_out,
                          imagelistener::imageViewing  & srv)
{
      cv::Mat templ_image;
      cv::Mat templ_mask;
      find_template(req.ID_Template, templ_image, templ_mask);
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
        matchTemplate( current_image, templ_image, result, CV_TM_CCOEFF_NORMED);
       // normalize( result, result, 0, 1, NORM_MINMAX, -1, Mat() );

        /// Localizing the best match with minMaxLoc
        double minVal; double maxVal; Point minLoc; Point maxLoc;
        Point matchLoc;

        minMaxLoc( result, &minVal, &maxVal, &minLoc, &maxLoc, Mat() );
        matchLoc = maxLoc;
        std::cout<<"Max val matching:" <<maxVal<< " Min val matching:"<< minVal << std::endl;
        std::cout<<"Match loc:[x,y]:"<<matchLoc.x<<" "<<matchLoc.y<<std::endl;
        srv.request.maxSimVal = maxVal;
        cv::Rect r;
        if(req.ID_Operation!=3)
        {
          r =cv::Rect(matchLoc, Point( matchLoc.x + templ_image.cols , matchLoc.y + templ_image.rows ));
        }
        else
        {
           cv::Point newLoc = matchLoc;
           newLoc.y  = 0;
           r =cv::Rect(newLoc, Point( matchLoc.x + templ_image.cols , matchLoc.y + templ_image.rows ));
 
        }
        cv::Mat roi = img_display(r).clone();
        roi_out = roi.clone();
        templ_out = templ_image.clone();
        res_out = cv::Mat::zeros( cv::Size(100,100), CV_8UC3 );

        if(maxVal>0.83)
        {
          ROS_INFO("Template is OK detected! Start comparison according to the operation sent...");
          
          analyzeROI(current_image,roi, templ_image, templ_mask, req.ID_Operation, res, res_out, srv);

          res.Im_Width = current_image.cols;
          res.Im_Height = current_image.rows;
          res.Mon_result.operation_type = (long int)req.ID_Operation;
        }
        else
        if(maxVal<=0.83&& maxVal>0.5)
        {
            ROS_INFO("Template is found, but the detail is probably  damaged");
            res.Im_Width = current_image.cols;
            res.Im_Height = current_image.rows;
            res.Mon_result.operation_type = (long int)req.ID_Operation;
            res.Mon_result.detail_detected = 1;
            res.Mon_result.detail_ok = 0;
            srv.measurment = -1;
            srv.detailStatus = 0;

        }
        else
        {
          ROS_ERROR("No template is present in the image or the detail is heavily damaged!!!");
          res.Im_Width = -1;
          res.Im_Height = -1;
          res.Mon_result.operation_type = (long int)req.ID_Operation;
          res.Mon_result.detail_detected = -1;
          srv.measurment = -1;
          srv.detailStatus = -1;

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
// thresholding

void Monitoring::thresholding(cv::Mat & img_, cv::Mat & out_, int alg)
{
  
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


