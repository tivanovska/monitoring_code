#include <ctime>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "image_transport/image_transport.h"
#include "cv_bridge/cv_bridge.h"
#include <fstream>
#include <ros/ros.h>

 
int main(int argc, char** argv)
{
   ros::init(argc, argv, "image_publisher");
   ros::NodeHandle nh;
   image_transport::ImageTransport it(nh);
   image_transport::Publisher pub = it.advertise("cam_img", 1);

   cv::Mat image = cv::imread(argv[1], CV_LOAD_IMAGE_COLOR);
  // cv::waitKey(30);
   sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
   
    ros::Rate loop_rate(5);
    while (nh.ok()) 
    {
      pub.publish(msg);
      ros::spinOnce();
      loop_rate.sleep();
    }
}


/*
int main(int argc, char **argv)
{


  cv::Mat blurred;
  ros::init(argc, argv, "imagepublisher");
  ros::NodeHandle nh;
  ros::Rate loop_rate(500);
  image_transport::ImageTransport it(nh);
  image_transport::Publisher pub = it.advertise("cam_img", 10);
  cv::Mat image = cv::imread("/home/tiva/Projects/DisplayImage/2008_000652.jpg");
  cv::cvtColor(image, blurred, CV_BGR2GRAY);
  cv::blur(blurred, blurred, cv::Size(5,5));

  //cv::connectedComponents(blurred, blurred);
  if(!image.data)
  {
    ROS_ERROR("COULD NOT OPEN FILE! \r\n");
  }
  else
  {
    ROS_INFO("Read file OK \r\n");
  }
  sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
 
  while(nh.ok())
  {
    ROS_INFO("Reading image");
    ROS_INFO("...");
    if(image.empty())
      break;
    ROS_INFO("Success!");
  //  cv::imshow("IMG", blurred);
  //  cv::waitKey(20);

    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }
  //ROS_INFO("STOPPING CAM");
  //cap.release();
}*/
