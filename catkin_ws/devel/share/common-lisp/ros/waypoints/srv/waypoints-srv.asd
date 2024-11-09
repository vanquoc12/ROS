
(cl:in-package :asdf)

(defsystem "waypoints-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Delete_Wp" :depends-on ("_package_Delete_Wp"))
    (:file "_package_Delete_Wp" :depends-on ("_package"))
    (:file "Groups_Wp" :depends-on ("_package_Groups_Wp"))
    (:file "_package_Groups_Wp" :depends-on ("_package"))
    (:file "Load_Wp" :depends-on ("_package_Load_Wp"))
    (:file "_package_Load_Wp" :depends-on ("_package"))
    (:file "Run_Wp" :depends-on ("_package_Run_Wp"))
    (:file "_package_Run_Wp" :depends-on ("_package"))
    (:file "Save_Wp" :depends-on ("_package_Save_Wp"))
    (:file "_package_Save_Wp" :depends-on ("_package"))
    (:file "Stop_Wp" :depends-on ("_package_Stop_Wp"))
    (:file "_package_Stop_Wp" :depends-on ("_package"))
    (:file "Wp_2_Group" :depends-on ("_package_Wp_2_Group"))
    (:file "_package_Wp_2_Group" :depends-on ("_package"))
  ))