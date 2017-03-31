#include <ros/ros.h>
#include <ros/network.h>
#include <string>
#include "qnode.hpp"





QNode::QNode (int argc, char** argv):
          init_argc(argc),
          init_argv(argv)
          {
               img_templ= cv::Mat::zeros( cv::Size(100,100), CV_8UC3 );

               img_roi= cv::Mat::zeros( cv::Size(100,100), CV_8UC3 );
               img_res = cv::Mat::zeros( cv::Size(100,100), CV_8UC3 );


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
     std::string path_t_templ = s+"/templ.png";

     std::string path_t_roi = s+"/roi.png";

     std::string path_t_result = s+"/result.png";

     boost::filesystem::path targetFileTempl(path_t_templ);
     boost::filesystem::path targetFileRoi(path_t_roi);

     boost::filesystem::path targetFileRes(path_t_result);
    
     if(boost::filesystem::exists(targetFileTempl) &&
     boost::filesystem::is_regular_file(targetFileTempl)&& 
     boost::filesystem::exists(targetFileRoi) &&
     boost::filesystem::is_regular_file(targetFileRoi) &&
     boost::filesystem::exists(targetFileRes) &&
     boost::filesystem::is_regular_file(targetFileRes)
     ) 
     {
       img_templ = cv::imread(targetFileTempl.string()); 
       boost::filesystem::remove(targetFileTempl);
       img_roi = cv::imread(targetFileRoi.string()); 
       boost::filesystem::remove(targetFileRoi);
       img_res = cv::imread(targetFileRes.string()); 
       boost::filesystem::remove(targetFileRes);


       ROS_INFO("Files are read and deleted!");
       simVal = req.maxSimVal;
     }
   }
   catch (const boost::filesystem::filesystem_error& ex)
   {
     ROS_ERROR("Error: %s",ex.what());
   }
    Q_EMIT imageUpdated();
    
    
    return true;

}

