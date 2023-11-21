
(cl:in-package :asdf)

(defsystem "exercice_1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "charge_status" :depends-on ("_package_charge_status"))
    (:file "_package_charge_status" :depends-on ("_package"))
  ))