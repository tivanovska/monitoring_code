#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <sstream> 
#include <time.h>
#include "boost/date_time/posix_time/posix_time.hpp" //include all types plus i/o
#include "boost/filesystem.hpp"
#include "imagelistener/exampleImageProcessing.h"
#include "imagelistener/imageViewing.h"
#include "ugoe_monitoringprocessor.h"

#include <memory>
#include <thread>

static const std::string OPENCV_WINDOW = "Image window";
static const std::string OPENCV_CURRENT = "Image Current";

std::shared_ptr<cv::Mat> p_currentImage;

class ImageConverter
{
  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  image_transport::Subscriber image_sub_;
  ros:: ServiceServer  processInputImageServer_;
  cv_bridge::CvImagePtr cv_ptr;
  ros::ServiceClient clientViewImages_;

  std::string cv_window_name = "vision";

  Monitoring mon; 
  int mode;
  std::string path_to_images;

 
public:
  ImageConverter(int mode_, std::string str_="")
    : it_(nh_), mode(mode_), path_to_images(str_)
  {

   
   mon.set_path_to_templates("/home/tiva/catkin_ws/templates_elvez_ugoe");
   clientViewImages_ = nh_.serviceClient<imagelistener::imageViewing>("/imageviewer_node_server/image_display");

    if(mode_ == 0)
    {
      ROS_INFO ("Real measurement mode. Subscribing to pylon_camera_node...");

      // Subscrive to input video feed and publish output video feed
      // to do this first run  ROS_NAMESPACE=pylon_camera_node rosrun image_proc image_proc

      image_sub_ = it_.subscribe("/pylon_camera_node/image_color", 1, &ImageConverter::streamCallback, this);
    }
    else
    {
      ROS_INFO ("Emulator mode. Reading images from harddrive...");
      boost::filesystem::path path(str_);
      try
      {
           if( boost::filesystem::exists(path) && boost::filesystem::is_directory(path))
           {
                ROS_INFO("Emulator mode. Path for image files exists!");
           }
           else
           {
             ROS_ERROR_STREAM( "The path for image files is incorrect!");
           }
      }
      catch (const boost::filesystem::filesystem_error& ex)
      {
        ROS_ERROR_STREAM( ex.what() << '\n');
      }

    }
    //cv::namedWindow(cv_window_name,CV_WINDOW_NORMAL);
    processInputImageServer_= nh_.advertiseService("/imagelistener_node_server/image_monitoring",&ImageConverter::monitoringCallback, this);

  }

  ~ImageConverter()
  {
     
  }
    






  /*
  *  callback function for monitoring process
  *
  */
  bool monitoringCallback(imagelistener::exampleImageProcessing:: Request & req,
                          imagelistener::exampleImageProcessing:: Response & res)
  
  {
      ROS_INFO("request: id_template%ld id_operation%ld", (long int)req.ID_Template, 
                                                          (long int)req.ID_Operation);
      ros::Time request_time = ros::Time::now();
      boost::posix_time::ptime thistime = request_time.toBoost();
      std::string str_time = boost::posix_time::to_simple_string(thistime);
      
      ROS_INFO ("request came at: %s", str_time.c_str());
      
      cv::Mat currentImage;
       
      if(mode == 0) // getting the image from the stream
      {
        ROS_INFO("real mode... getting image frame from pylon_camera stream");
        currentImage = cv_ptr->image;
      }
      else
      {
        boost::filesystem::path p(path_to_images);
        ROS_INFO("emulation mode read the first found image from the given path");
        boost::filesystem::directory_iterator end_iter;
        for (boost::filesystem::directory_iterator dir_itr(p); dir_itr != end_iter; ++dir_itr)
        {
          if (boost::filesystem::is_regular_file(dir_itr->status()))
          {
            ROS_INFO("Filename: %s", dir_itr->path().string().c_str());
            currentImage = cv::imread(dir_itr->path().string(), CV_LOAD_IMAGE_COLOR);
            break;
          }
        }
      }
      if(!currentImage.empty())
      {
        imagelistener::imageViewing srv;
        cv::Mat templ;
        cv::Mat roi;
        cv::Mat result;
        // call monitoring function
        mon.execute_monitoring(req,res,currentImage, templ, roi, result, srv);

        cv::imwrite("/home/tiva/catkin_ws/tmp_imgs/templ.png", templ);

        cv::imwrite("/home/tiva/catkin_ws/tmp_imgs/roi.png", roi);

        cv::imwrite("/home/tiva/catkin_ws/tmp_imgs/result.png", result);
        
        
        // send request to display
        
        srv.request.path_to_tmp_img ="/home/tiva/catkin_ws/tmp_imgs" ;

        if (clientViewImages_.call(srv))
        {
          ROS_INFO("Service to display results is called");
        }
        else
        {
          ROS_ERROR("Failed to call service for image display");
          return 1;
        }
      }



      ROS_INFO("sending back response: [%ld, %ld] %ld", 
                 (long int)res.Im_Width, 
                 (long int)res.Im_Height, 
                 (long int) res.Mon_result.operation_type);
            return true;
  }
  
 
  /*
  *  The callback function for camera video subscription
  *   Reads the video from the stream and converts it cv_ptr
  *   The converted video stream is shown 
  */
  void streamCallback(const sensor_msgs::ImageConstPtr& msg)
  {
    
    try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }
  /*
    // Draw an example circle on the video stream
    if (cv_ptr->image.rows > 60 && cv_ptr->image.cols > 60)
      cv::circle(cv_ptr->image, cv::Point(50, 50), 10, CV_RGB(255,0,0));

    // Update GUI Window
    cv::imshow(OPENCV_WINDOW, cv_ptr->image);
    cv::waitKey(3);
 */
    /*
    static int image_count = 0;                                // added this
    std::stringstream sstream;                               // added this
    sstream << "my_image" << image_count << ".png" ;                  // added this
    ROS_ASSERT( cv::imwrite( sstream.str(),  cv_ptr->image ) );      // added this
    image_count++;                                      // added this
    */

    // Output modified video stream
  //  image_pub_.publish(cv_ptr->toImageMsg());
  }
};


 /*
   *
   *
   *
   */
  void thr(std::shared_ptr<cv::Mat>  pImg)
  {
   // while(1)
    {
    cv::namedWindow(OPENCV_CURRENT,CV_WINDOW_NORMAL);
    cv::imshow(OPENCV_CURRENT, *pImg);
    cv::waitKey(0);
    }
  }


int main(int argc, char** argv)
{
  ros::init(argc, argv, "monitoring_server");
  ImageConverter ic(1,"/home/tiva/catkin_ws/imgs");

  

  //p_currentImage = std::make_shared<cv::Mat>(cv::Mat::zeros(100, 100, CV_64F));
  //std::thread t1 = std::thread(thr, p_currentImage);
  ros::spin();

  //cv::destroyAllWindows();

  //t1.join();
  //cv::destroyWindow(OPENCV_CURRENT);
  return 0;
}
