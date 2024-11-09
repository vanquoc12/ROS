
(cl:in-package :asdf)

(defsystem "multipoint_navigation_receiver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "obstacle_srv" :depends-on ("_package_obstacle_srv"))
    (:file "_package_obstacle_srv" :depends-on ("_package"))
    (:file "set_goal_srv" :depends-on ("_package_set_goal_srv"))
    (:file "_package_set_goal_srv" :depends-on ("_package"))
  ))