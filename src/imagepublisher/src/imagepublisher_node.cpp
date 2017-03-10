#include <ctime>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "image_transport/image_transport.h"
#include "cv_bridge/cv_bridge.h"
#include <fstream>

int main(int argc, char **argv)
{


  cv::Mat blurred;
  ros::init(argc, argv, "webcam_streamer");
  ros::NodeHandle nh;
  ros::Rate loop_rate(500);
  image_transport::ImageTransport it(nh);
  image_transport::Publisher pub = it.advertise("cam_img", 10);
  cv::Mat image = cv::imread("/home/tiva/Projects/DisplayImage/2008_000652.jpg");
  cv::cvtColor(image, blurred, CV_BGR2GRAY);
  cv::blur(blurred, blurred, cv::Size(5,5));

  cv::connectedComponents(blurred, blurred);
  if(!image.data)
  {
    ROS_ERROR("COULD NOT OPEN FILE! \r\n");
  }
  else
  {
    ROS_INFO("Read file OK \r\n");
  }
  /*cv::VideoCapture cap("//home//milan//drop.avi");

    if(!cap.isOpened())
    {
    ROS_ERROR("COULD NOT OPEN FILE!\r\n");
    return 0;
    }else
    ROS_INFO("Read file successfully!\r\n");
   */
  while(nh.ok())
  {
    ROS_INFO("Reading image");
    //cap.read(image);
    ROS_INFO("...");
    if(image.empty())
      break;
    ROS_INFO("Success!");
    cv::imshow("IMG", image);
    cv::waitKey(20);
    sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }
  //ROS_INFO("STOPPING CAM");
  //cap.release();
}