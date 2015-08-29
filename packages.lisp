;; file: packages.lisp

(in-package :cl-user)

(defpackage cl-datomic
  (:nicknames :datomic)
  (:use :cl :cl-user :cl-datalog :cl-edn)
  (:export #:*cl-datomic-version*))

(in-package :cl-datomic)

(defparameter *cl-datomic-version* #.cl-datomic-asd:*cl-datomic-version*)

;; EOF
