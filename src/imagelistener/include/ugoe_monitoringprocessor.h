#ifndef UGOE_MONITORINGPROCESSOR_H
#define UGOE_MONITORINGPROCESSOR_H

// includes
#include <stdio.h>
#include <iostream>
#include <tuple>


#include <iostream>
#include <opencv2/core.hpp>
#include <opencv2/features2d.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/calib3d.hpp>
#include <opencv2/xfeatures2d.hpp>
#include <opencv2/xfeatures2d/nonfree.hpp>
#include <opencv2/flann.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/video/background_segm.hpp>
#include <opencv2/opencv.hpp>

#include <opencv2/shape.hpp>
#include <opencv2/core/utility.hpp>

#include "imagelistener/exampleImageProcessing.h"

using namespace cv;
using namespace cv::xfeatures2d;




/*
* class for executing moniroting tasks
*
*/


class Monitoring
{
  // path to directory, where template files are stored
  std::string path_to_templates;
  // px to mm ratio coefficient (e.g. 100 px = 2mm , then coefficient 0.02
  // and a new measurement d (in px) -> d*coefficient (mm))
  float px_to_mm_coef;
  
   /*
    * this function is called if the template is found in the current image
    *  according to the operation_id the correspondent analysis routines are called 
    *
    */
   void analyzeROI(cv::Mat & roi, cv::Mat & templ, int op_id, imagelistener::exampleImageProcessing:: Response & res);

   // OpenCV routines for analysis of images, wrappers to be used in ReconCell
   //------------------------------------------------------------------------------------------------------------------
   // Contrast Limited Adaptive Histogram Equalization
   void CLAHE_HistEq(cv::Mat& img_, cv::Mat & out_);
   // blurring wrapper
   void blurring(cv::Mat & in_, cv::Mat & out_, int size, int alg);
   // median for each channel in image
   cv::Scalar median (cv::Mat & image);
   // autocanny : http://www.pyimagesearch.com/2015/04/06/zero-parameter-automatic-canny-edge-detection-with-python-and-opencv/
   void autoCanny(cv::Mat& img_, cv::Mat & out_);



  //-------------------------------------------------------------------------------------------------------------------
  public:
  // constructors and destructor
  Monitoring(std::string path_, float ratio_): 
    path_to_templates(path_),
    px_to_mm_coef(ratio_) {}
  Monitoring(){
    path_to_templates = "";
    px_to_mm_coef = 0.0;
  }              
  ~Monitoring() {}
  // setters and getters for path_to_templates
  void set_path_to_templates(std::string const & s_) {path_to_templates= s_;}
  std::string const & get_path_to_templates() {return path_to_templates;}

  //setters and getters for px_to_mm_coef
  void set_px_to_mm_coef (float const & c_) {px_to_mm_coef = c_;}
  float const & get_px_to_mm_coef() {return px_to_mm_coef;}

  /*
   *  finds a template with the name template_id.png in path_to_templates
   *  if path is not set or no such file -> throws exception
   */
  void find_template(int template_id, cv::Mat & template_found);

  /*
   *  main monitoring function 
   *  receives a request and returns a response
   */
  void execute_monitoring(imagelistener::exampleImageProcessing:: Request & req,
                          imagelistener::exampleImageProcessing:: Response & res, 
                          cv::Mat & current_image);
  



};


#endif
