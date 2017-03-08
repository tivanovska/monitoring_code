#include "ugoe_monitoringprocessor.h"
#include <string> 
#include "boost/filesystem.hpp"
#include <ros/ros.h>
#include <boost/lexical_cast.hpp>
#include <iostream>
/*
* implementation of find_templates
*/

 void Monitoring::find_template(int template_id, cv::Mat & template_found)
 {
   try
   {
     std::string s = boost::lexical_cast<std::string>(template_id);
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
                          imagelistener::exampleImageProcessing:: Response & res)
{
      cv::Mat templ_image;
      find_template(req.ID_Template, templ_image);

}

