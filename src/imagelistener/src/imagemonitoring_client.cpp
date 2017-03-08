#include "ros/ros.h"
#include "imagelistener/exampleImageProcessing.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "monitoring_client");
  if (argc != 3)
  {
    ROS_INFO("usage: asks the server to obtain an image, use template X and perform operation Y");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<imagelistener::exampleImageProcessing>("/imagelistener_node_server/image_monitoring");
  imagelistener::exampleImageProcessing srv;
  srv.request.ID_Template = atoll(argv[1]);
  srv.request.ID_Operation = atoll(argv[2]);
  if (client.call(srv))
  {
    ROS_INFO("Response: %ld %ld", (long int)srv.response.Im_Width,(long int)srv.response.Im_Height);
  }
  else
  {
    ROS_ERROR("Failed to call service for image processing");
    return 1;
  }

  return 0;
}

