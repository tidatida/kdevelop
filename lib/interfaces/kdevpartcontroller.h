#ifndef __KDEV_PARTCONTROLLER_H__
#define __KDEV_PARTCONTROLLER_H__


#include <kurl.h>
#include <kparts/partmanager.h>


class KDevPartController : public KParts::PartManager
{
  Q_OBJECT

public:

  KDevPartController(QWidget *parent);

  virtual void editDocument(const KURL &url, int lineNum=-1) = 0;
  virtual void showDocument(const KURL &url, const QString &context = QString::null) = 0;

  virtual void saveAllFiles() = 0; 
  virtual void revertAllFiles() = 0;


signals:

  /**
   * Emitted when a document has been saved.
   */
  void savedFile(const QString &fileName);

  /**
   * Emitted when a document has been loaded.
   */
  void loadedFile(const QString &fileName);

};



#endif
