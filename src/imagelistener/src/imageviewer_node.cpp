#include "ros/ros.h"
#include "imagelistener/imageViewing.h"
#include <cstdlib>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <sensor_msgs/Image.h>

#include <string> 
#include "boost/filesystem.hpp"
#include <ros/ros.h>
#include <boost/lexical_cast.hpp>

#include "gui_imageviewer.h"
#include <QApplication>



bool showImagesCb(imagelistener::imageViewing:: Request & req,
                  imagelistener::imageViewing:: Response & res)
{

  cv::Mat img_init= cv::Mat::zeros( cv::Size(100,100), CV_8UC3 );
  //cv::Mat img_templ;
  //cv::Mat img_res;
   
  try
   {
     std::string s = boost::lexical_cast<std::string>(req.path_to_tmp_img);
     std::string path_t = s+"/init.png";

     boost::filesystem::path targetFile(path_t);
    
     if(boost::filesystem::exists(targetFile) &&
     boost::filesystem::is_regular_file(targetFile)) 
     {
       img_init = cv::imread(targetFile.string()); 
       boost::filesystem::remove(targetFile);
       ROS_INFO("File is read and deleted!");
   //    gui_main->loadNewImage(img_init);
     }
   }
   catch (const boost::filesystem::filesystem_error& ex)
   {
     ROS_ERROR("Error: %s",ex.what());
   }
 // cv::namedWindow("initroi", CV_WINDOW_NORMAL);
 // cv::imshow("initroi", img_init);
 // cv::waitKey(10);


    
    return true;
}




int main(int argc, char **argv)
{
   QApplication app(argc, argv);
   ROS_INFO("Ready to show nice images");
  GUI_ImageViewer * gui_main;

  gui_main = new GUI_ImageViewer(argc, argv,0);
  gui_main->show();
  return app.exec();

 // ros::spin(); 

}
