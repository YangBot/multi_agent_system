;; Auto-generated. Do not edit!


(when (boundp 'service_demo::Greeting)
  (if (not (find-package "SERVICE_DEMO"))
    (make-package "SERVICE_DEMO"))
  (shadow 'Greeting (find-package "SERVICE_DEMO")))
(unless (find-package "SERVICE_DEMO::GREETING")
  (make-package "SERVICE_DEMO::GREETING"))
(unless (find-package "SERVICE_DEMO::GREETINGREQUEST")
  (make-package "SERVICE_DEMO::GREETINGREQUEST"))
(unless (find-package "SERVICE_DEMO::GREETINGRESPONSE")
  (make-package "SERVICE_DEMO::GREETINGRESPONSE"))

(in-package "ROS")





(defclass service_demo::GreetingRequest
  :super ros::object
  :slots (_name _task ))

(defmethod service_demo::GreetingRequest
  (:init
   (&key
    ((:name __name) "")
    ((:task __task) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _task (round __task))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _task
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _task
       (write-long _task s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _task
     (setq _task (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass service_demo::GreetingResponse
  :super ros::object
  :slots (_feedback ))

(defmethod service_demo::GreetingResponse
  (:init
   (&key
    ((:feedback __feedback) "")
    )
   (send-super :init)
   (setq _feedback (string __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _feedback
    4 (length _feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass service_demo::Greeting
  :super ros::object
  :slots ())

(setf (get service_demo::Greeting :md5sum-) "5309a9e5d2c51de0b951c788813a1519")
(setf (get service_demo::Greeting :datatype-) "service_demo/Greeting")
(setf (get service_demo::Greeting :request) service_demo::GreetingRequest)
(setf (get service_demo::Greeting :response) service_demo::GreetingResponse)

(defmethod service_demo::GreetingRequest
  (:response () (instance service_demo::GreetingResponse :init)))

(setf (get service_demo::GreetingRequest :md5sum-) "5309a9e5d2c51de0b951c788813a1519")
(setf (get service_demo::GreetingRequest :datatype-) "service_demo/GreetingRequest")
(setf (get service_demo::GreetingRequest :definition-)
      "string name
int32 task
---
string feedback


")

(setf (get service_demo::GreetingResponse :md5sum-) "5309a9e5d2c51de0b951c788813a1519")
(setf (get service_demo::GreetingResponse :datatype-) "service_demo/GreetingResponse")
(setf (get service_demo::GreetingResponse :definition-)
      "string name
int32 task
---
string feedback


")



(provide :service_demo/Greeting "5309a9e5d2c51de0b951c788813a1519")


