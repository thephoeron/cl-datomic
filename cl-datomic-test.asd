;; file: cl-datomic-test.asd

(in-package :cl-user)

(defpackage cl-datomic-test-asd
  (:use :cl :asdf))

(in-package :cl-datomic-test-asd)

(defsystem #:cl-datomic-test
  :serial t
  :version "0.0.1"
  :description "The test code for CL-DATOMIC."
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :license "MIT"
  :depends-on (#:cl-datomic
               #:prove)
  :components ((:module "t"
                :components
                ((:test-file "cl-datomic"))))
  :defsystem-depends-on (prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))

;; EOF
