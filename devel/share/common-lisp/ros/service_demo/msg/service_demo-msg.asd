
(cl:in-package :asdf)

(defsystem "service_demo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "getbot" :depends-on ("_package_getbot"))
    (:file "_package_getbot" :depends-on ("_package"))
  ))