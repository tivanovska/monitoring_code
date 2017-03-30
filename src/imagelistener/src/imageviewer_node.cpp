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
