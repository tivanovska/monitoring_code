#include <ros/ros.h>
#include <ros/network.h>
#include <string>
#include "qnode.hpp"





QNode::QNode (int argc, char** argv):
          init_argc(argc),
          init_argv(argv)
          {
               img= cv::Mat::zeros( cv::Size(100,100), CV_8UC3 );

          }
QNode::~QNode() {
    if(ros::isStarted())
    {
      ros::shutdown();
      ros::waitForShutdown();
    }
    wait();
}


bool QNode::init()
{
    ros::init(init_argc, init_argv, "imageviewing_server");
    if(! ros::master::check())
    {
      return false;
    }
    ros::start();
    ros::NodeHandle n;
    serv = n.advertiseService("/imageviewer_node_server/image_display",&QNode::showImagesCb, this);
    start();
    return true;
}


void QNode::run()
{
  // ros::NodeHandle n;
  // serv = n.advertiseService("/imageviewer_node_server/image_display",&QNode::showImagesCb, this);
   ros::spin();
   std::cout<<"Ros shutdown, proceesing to close the gui"<<std::endl;

   Q_EMIT rosShutdown();
}

bool QNode::showImagesCb(imagelistener::imageViewing:: Request & req,
                  imagelistener::imageViewing:: Response & res)
{

  try
   {
     std::string s = boost::lexical_cast<std::string>(req.path_to_tmp_img);
     std::string path_t = s+"/init.png";

     boost::filesystem::path targetFile(path_t);
    
     if(boost::filesystem::exists(targetFile) &&
     boost::filesystem::is_regular_file(targetFile)) 
     {
       img = cv::imread(targetFile.string()); 
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

    Q_EMIT imageUpdated();
    
    
    return true;

}

