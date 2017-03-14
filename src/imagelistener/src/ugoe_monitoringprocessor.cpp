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

        /// Show me what you got
        rectangle( img_display, matchLoc, Point( matchLoc.x + templ_image.cols , matchLoc.y + templ_image.rows ), CV_RGB(255, 255, 255), 0.5 );
        cv::namedWindow("MatchingResult",CV_WINDOW_NORMAL);
        cv::imshow("MatchingResult", img_display);
        cv::waitKey(0);
/*        cv::destroyWindow("MatchingResult");

        */
      }
      else
      {
        std::cout<< "Template image is not found!"<<std::endl;
      }

}

