
(cl:in-package :asdf)

(defsystem "imagelistener-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ELVEZ" :depends-on ("_package_ELVEZ"))
    (:file "_package_ELVEZ" :depends-on ("_package"))
  ))