;; Auto-generated. Do not edit!


(when (boundp 'service_demo::getbot)
  (if (not (find-package "SERVICE_DEMO"))
    (make-package "SERVICE_DEMO"))
  (shadow 'getbot (find-package "SERVICE_DEMO")))
(unless (find-package "SERVICE_DEMO::GETBOT")
  (make-package "SERVICE_DEMO::GETBOT"))

(in-package "ROS")
;;//! \htmlinclude getbot.msg.html


(defclass service_demo::getbot
  :super ros::object
  :slots (_state ))

(defmethod service_demo::getbot
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get service_demo::getbot :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get service_demo::getbot :datatype-) "service_demo/getbot")
(setf (get service_demo::getbot :definition-)
      "string state


")



(provide :service_demo/getbot "af6d3a99f0fbeb66d3248fa4b3e675fb")


