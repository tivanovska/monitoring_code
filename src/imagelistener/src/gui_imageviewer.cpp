#include <string>
#include <QtGui>
#include <QLabel>
#include <QtWidgets/QApplication>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/opencv.hpp>
#include "boost/filesystem.hpp"
#include <ros/ros.h>
#include <boost/lexical_cast.hpp>

#include "gui_imageviewer.h"

GUI_ImageViewer::GUI_ImageViewer (int argc, char** argv, QWidget * parent): QMainWindow(parent), qnode(argc,argv)
{
  imageLabel = new QLabel;
  imageLabel->setBackgroundRole(QPalette::Base);
  imageLabel->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored);
  imageLabel->setScaledContents(true);
  
  scrollArea = new QScrollArea;
  scrollArea->setBackgroundRole(QPalette::Dark);
  scrollArea->setWidget(imageLabel);
  setCentralWidget(scrollArea);


  setWindowTitle (tr("Image Viewer"));
  resize (500, 400);
  
  cv::Mat _img ;

  std::string path_t = "/home/tiva/catkin_ws/templates_elvez_ugoe/1.png";
  boost::filesystem::path targetFile(path_t);

  if(boost::filesystem::exists(targetFile) &&
      boost::filesystem::is_regular_file(targetFile)) 
  {
    _img = cv::imread(targetFile.string()); 
  }
  std::cout<<"image size:"<<_img.rows<<" "<<_img.cols<<std::endl;
  imagePreview = new QPixmap;
  imageLabel->updatesEnabled();
  cv::cvtColor( _img, _img, CV_BGR2RGB );
  imgToShow = QImage((uchar*) _img.data, _img.cols, _img.rows, 
      _img.step, QImage::Format_RGB888);
  imageLabel->setPixmap(QPixmap::fromImage(imgToShow));
  imageLabel->resize(1.0 * imageLabel->pixmap()->size());

  QObject::connect(&qnode, SIGNAL(rosShutdown()), this, SLOT(close()));
  QObject::connect(&qnode, SIGNAL(imageUpdated()),this, SLOT(loadNewImage()));
  qnode.init();

}

void GUI_ImageViewer::loadNewImage()
{
  cv::Mat _img = qnode.img.clone(); 
  cv::cvtColor( _img, _img, CV_BGR2RGB );
  imgToShow = QImage((uchar*) _img.data, _img.cols, _img.rows, 
      _img.step, QImage::Format_RGB888);
  imageLabel->setPixmap(QPixmap::fromImage(imgToShow));
  imageLabel->resize(1.0 * imageLabel->pixmap()->size());

  imageLabel->update();

}

void GUI_ImageViewer::closeEvent(QCloseEvent * event)
{
  QMainWindow::closeEvent(event);
}

GUI_ImageViewer::~GUI_ImageViewer ()

{
	delete [] imagePreview;

	delete [] imageLabel;

	delete [] scrollArea;
}


