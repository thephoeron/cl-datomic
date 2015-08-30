;; file: cl-datomic.asd

(in-package :cl-user)

(defpackage cl-datomic-asd
  (:use :cl :asdf)
  (:export #:*cl-datomic-version*))

(in-package :cl-datomic-asd)

(defparameter *cl-datomic-version* "0.0.1")

(defsystem cl-datomic
  :version #.*cl-datomic-version*
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :description "CL Interface to Datomic: the Fully Transactional, Cloud-Ready, Distributed Database"
  :license "MIT"
  :serial t
  :depends-on (:trivial-types
               :cl-edn
               :cl-datalog
               :drakma)
  :components ((:file "packages")
               (:file "cl-datomic")))

;; EOF
