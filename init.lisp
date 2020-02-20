
(in-package #:cl-dialog)

(defcfun "init_dialog" :void
  (stdin :pointer)
  (stdout :pointer))

(defun dialog-init ()
    (init-dialog (get-stdin) (get-stdout)))

(defcfun "end_dialog" :void)
