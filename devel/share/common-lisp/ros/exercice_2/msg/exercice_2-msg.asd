
(cl:in-package :asdf)

(defsystem "exercice_2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "charge_status_answer" :depends-on ("_package_charge_status_answer"))
    (:file "_package_charge_status_answer" :depends-on ("_package"))
    (:file "charge_status_req" :depends-on ("_package_charge_status_req"))
    (:file "_package_charge_status_req" :depends-on ("_package"))
  ))