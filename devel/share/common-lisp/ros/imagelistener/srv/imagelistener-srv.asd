
(cl:in-package :asdf)

(defsystem "imagelistener-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :imagelistener-msg
)
  :components ((:file "_package")
    (:file "exampleImageProcessing" :depends-on ("_package_exampleImageProcessing"))
    (:file "_package_exampleImageProcessing" :depends-on ("_package"))
    (:file "imageViewing" :depends-on ("_package_imageViewing"))
    (:file "_package_imageViewing" :depends-on ("_package"))
  ))