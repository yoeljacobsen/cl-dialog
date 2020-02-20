;;;; cl-dialog.lisp

(in-package #:cl-dialog)

(define-foreign-library libdialog
  (:unix "libdialog.so")
  (t (:default "libdialog")))

(define-foreign-library libgetstd
    (:unix "libgetstd.so")
  (t (:default "libgetstd")))

(pushnew (asdf:system-source-directory :cl-dialog)
         *foreign-library-directories*)

(use-foreign-library libgetstd)
(use-foreign-library libdialog)
