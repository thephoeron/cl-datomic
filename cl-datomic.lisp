;; file: cl-datomic.lisp

(in-package :cl-datomic)

(defun global-connect (&key (host "localhost") (port 8080))
  "Globally connect application to Datomic.")

(defun global-disconnect ()
  "If possible, globally disconnect from Datomic server. Else do nothing.")

;; EOF
