;; Auto-generated. Do not edit!


(when (boundp 'service_demo::snedtask)
  (if (not (find-package "SERVICE_DEMO"))
    (make-package "SERVICE_DEMO"))
  (shadow 'snedtask (find-package "SERVICE_DEMO")))
(unless (find-package "SERVICE_DEMO::SNEDTASK")
  (make-package "SERVICE_DEMO::SNEDTASK"))
(unless (find-package "SERVICE_DEMO::SNEDTASKREQUEST")
  (make-package "SERVICE_DEMO::SNEDTASKREQUEST"))
(unless (find-package "SERVICE_DEMO::SNEDTASKRESPONSE")
  (make-package "SERVICE_DEMO::SNEDTASKRESPONSE"))

(in-package "ROS")





(defclass service_demo::snedtaskRequest
  :super ros::object
  :slots (_name _age _feedback ))

(defmethod service_demo::snedtaskRequest
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:feedback __feedback) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _feedback (string __feedback))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _age
    4
    ;; string _feedback
    4 (length _feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _age
       (write-long _age s)
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass service_demo::snedtaskResponse
  :super ros::object
  :slots ())

(defmethod service_demo::snedtaskResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass service_demo::snedtask
  :super ros::object
  :slots ())

(setf (get service_demo::snedtask :md5sum-) "d909ff136d7b21683428bf14271414ba")
(setf (get service_demo::snedtask :datatype-) "service_demo/snedtask")
(setf (get service_demo::snedtask :request) service_demo::snedtaskRequest)
(setf (get service_demo::snedtask :response) service_demo::snedtaskResponse)

(defmethod service_demo::snedtaskRequest
  (:response () (instance service_demo::snedtaskResponse :init)))

(setf (get service_demo::snedtaskRequest :md5sum-) "d909ff136d7b21683428bf14271414ba")
(setf (get service_demo::snedtaskRequest :datatype-) "service_demo/snedtaskRequest")
(setf (get service_demo::snedtaskRequest :definition-)
      "string name
int32 age
string feedback
---
")

(setf (get service_demo::snedtaskResponse :md5sum-) "d909ff136d7b21683428bf14271414ba")
(setf (get service_demo::snedtaskResponse :datatype-) "service_demo/snedtaskResponse")
(setf (get service_demo::snedtaskResponse :definition-)
      "string name
int32 age
string feedback
---
")



(provide :service_demo/snedtask "d909ff136d7b21683428bf14271414ba")


