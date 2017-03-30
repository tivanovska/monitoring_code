#ifndef GUI_IMAGEVIEWER_H
#define GUI_IMAGEVIEWER_H

#include <string>
#include <QtGui>
#include <QImage>
#include <QScrollArea>
#include <QGridLayout>
#include <QLabel>
#include <QMainWindow>
#include <QTabWidget>

#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/opencv.hpp>

#include "qnode.hpp"

/*class QAction;
class QLabel;
class QScrollArea;
class QScrollBar;
*/
// QImage img((uchar*)mat.data, mat.cols, mat.rows, QImage::Format_RGB32);
class GUI_ImageViewer: public QMainWindow 
{
  Q_OBJECT

public: 
  GUI_ImageViewer (int argc, char** argv, QWidget * parent=0);
  virtual ~GUI_ImageViewer();
  void closeEvent(QCloseEvent *event);
public Q_SLOTS:
  void loadNewImage();
private:
  QLabel * imageLabelTempl;
  QLabel * imageLabelRoi;
  QLabel * similarityValue;



  QScrollArea * scrollAreaTempl;
  QScrollArea * scrollAreaRoi;

  QGridLayout * layout;
  QTabWidget * tabWidget;

  QImage imgToShow;

  QNode  qnode;
  
};

#endif
