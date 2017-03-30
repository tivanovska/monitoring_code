#ifndef QNODE_HPP
#define QNODE_HPP

#include <ros/ros.h>
#include <string>
#include <QThread>


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


/*
* ros node wrapper class to put into qt gui
*
*/ 


class QNode: public QThread
{
  Q_OBJECT

  public: 
    QNode(int argc, char** argv);
    virtual ~QNode();
    bool init();
    void run();
    const std::string& nodeName() {return node_name;}

    cv::Mat img;
    float simVal;

  Q_SIGNALS:
    void rosShutdown();
    void imageUpdated();
  protected:
  int init_argc;
  char ** init_argv;
  const std::string node_name;
  ros::ServiceServer serv;
  bool showImagesCb(imagelistener::imageViewing:: Request & req,
                  imagelistener::imageViewing:: Response & res);

   
};

#endif
