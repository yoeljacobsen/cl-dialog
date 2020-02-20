;;;; cl-dialog.asd

(asdf:defsystem #:cl-dialog
  :description "Describe cl-dialog here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (:cffi)
  :components ((:file "package")
               (:file "cl-dialog")
               (:file "getstd")
               (:file "init")
               (:file "widgets")
               (:file "tests")))
