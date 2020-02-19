;;;; cl-dialog.lisp

(in-package #:cl-dialog)

(define-foreign-library libdialog
  (:unix "libdialog.so")
  (t (:default "libdialog")))

(use-foreign-library libdialog)
