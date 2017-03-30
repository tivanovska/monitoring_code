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

  tabWidget = new QTabWidget();
  QWidget * matchW = new QWidget();
  QWidget * measureW = new QWidget();
  tabWidget->addTab(matchW, tr("Matching"));
  tabWidget->addTab(measureW, tr("Measuring"));
  //COMPONENTS FOR PATTERN MATCHING WIDGET 
  QVBoxLayout *vlayout = new QVBoxLayout;
  QHBoxLayout *hlayout = new QHBoxLayout;

  similarityValue = new QLabel("Max Similarity Value: ");
  similarityValue->updatesEnabled();



   
  scrollAreaTempl = new QScrollArea;
  scrollAreaTempl->setBackgroundRole(QPalette::Dark);
  scrollAreaRoi = new QScrollArea;
  scrollAreaRoi->setBackgroundRole(QPalette::Dark);
  hlayout->addWidget (scrollAreaTempl);
  hlayout->addWidget(scrollAreaRoi);
  vlayout->addLayout(hlayout);
  vlayout->addWidget(similarityValue);
  matchW->setLayout(vlayout);
  

  
  imageLabelTempl = new QLabel("Template Image");
  imageLabelTempl->setBackgroundRole(QPalette::Base);
  imageLabelTempl->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored);
  imageLabelTempl->setScaledContents(true);
  
  
  imageLabelRoi = new QLabel("Extracted Pattern Image");
  imageLabelRoi->setBackgroundRole(QPalette::Base);
  imageLabelRoi->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored);
  imageLabelRoi->setScaledContents(true);
  imageLabelTempl->updatesEnabled();
  imageLabelRoi->updatesEnabled();

    
  //QLabel * tLabel1 = new QLabel("Template Image");

  //QLabel * tLabel2 = new QLabel("Extracted Pattern Image");
  //Q
//  scrollArea = new QScrollArea;
//  scrollArea->setBackgroundRole(QPalette::Dark);
  scrollAreaTempl->setWidget(imageLabelTempl);
  scrollAreaRoi->setWidget(imageLabelRoi);
  scrollAreaTempl->setToolTip("Template Image");

  scrollAreaRoi->setToolTip("Extracted Pattern Image");
  //
  setCentralWidget(tabWidget);


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
  cv::cvtColor( _img, _img, CV_BGR2RGB );
  imgToShow = QImage((uchar*) _img.data, _img.cols, _img.rows, 
      _img.step, QImage::Format_RGB888);
  imageLabelTempl->setPixmap(QPixmap::fromImage(imgToShow));
  imageLabelTempl->resize(1.0 * imageLabelTempl->pixmap()->size());

  imageLabelRoi->setPixmap(QPixmap::fromImage(imgToShow));
  imageLabelRoi->resize(1.0 * imageLabelRoi->pixmap()->size());


  QObject::connect(&qnode, SIGNAL(rosShutdown()), this, SLOT(close()));
  QObject::connect(&qnode, SIGNAL(imageUpdated()),this, SLOT(loadNewImage()));
  qnode.init();

}

void GUI_ImageViewer::loadNewImage()
{
  // update template viewer
  cv::Mat _img = qnode.img_templ.clone(); 
  cv::cvtColor( _img, _img, CV_BGR2RGB );
  imgToShow = QImage((uchar*) _img.data, _img.cols, _img.rows, 
      _img.step, QImage::Format_RGB888);
  imageLabelTempl->setPixmap(QPixmap::fromImage(imgToShow));
  imageLabelTempl->resize(1.0 * imageLabelTempl->pixmap()->size());
  imageLabelTempl->update();
  // update roi viewer
  _img = qnode.img_roi.clone(); 
  cv::cvtColor( _img, _img, CV_BGR2RGB );
  imgToShow = QImage((uchar*) _img.data, _img.cols, _img.rows, 
      _img.step, QImage::Format_RGB888);
  imageLabelRoi->setPixmap(QPixmap::fromImage(imgToShow));
  imageLabelRoi->resize(1.0 * imageLabelRoi->pixmap()->size());
  imageLabelRoi->update();
  //update similarity value label
  similarityValue->setText("Max Similarity Value: "+ QString::number(qnode.simVal));
  similarityValue->update();

}

void GUI_ImageViewer::closeEvent(QCloseEvent * event)
{
  QMainWindow::closeEvent(event);
}

GUI_ImageViewer::~GUI_ImageViewer ()

{

	delete [] imageLabelTempl;
	delete [] imageLabelRoi;
  delete [] similarityValue;

	delete [] scrollAreaTempl;
	delete [] scrollAreaRoi;

  delete [] tabWidget;
}


