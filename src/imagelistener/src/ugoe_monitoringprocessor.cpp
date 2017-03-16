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
    cvtColor(tmp, tmp, CV_BGR2HSV);
    cv::inRange(tmp, cv::Scalar(0, 0, 0, 0), cv::Scalar(180, 255, 30, 0), tmp);
    std::vector<std::vector<cv::Point> > contours;
    std::vector<cv::Vec4i> hierarchy;
    findContours(tmp, contours, hierarchy, CV_RETR_EXTERNAL, CV_CHAIN_APPROX_SIMPLE);

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
    /// Draw contours
    tmp = cv::Mat::zeros( tmp.size(), CV_8UC3 );
    Scalar color = cv::Scalar( rng.uniform(0, 255), rng.uniform(0,255), rng.uniform(0,255) );
    cv::drawContours( tmp, contours, lci, color, 2, 8, hierarchy, 0, Point() );
    cv::rectangle(tmp, bounding_rect,  Scalar(0,255,0),1, 8,0);  
    std::vector<cv::Point> convexHullPoints =  contoursConvexHull(contours, lci);
    polylines( tmp, convexHullPoints, true, Scalar(0,0,255), 2 );
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



    cv::imshow("vision roi", tmp);
    cv::waitKey(0);

    cv::imshow("vision template", tmp_temp);
    cv::waitKey(0);
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


