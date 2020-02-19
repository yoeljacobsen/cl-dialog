
(in-package #:cl-dialog)

(defcfun "init_dialog" :void
  (stdin :pointer)
  (stdout :pointer))

(defun dialog-init ()
  (let ((stdin  (foreign-symbol-pointer "stdin"))
        (stdout (foreign-symbol-pointer "stdout")))
    (init-dialog stdin stdout)))

(defcfun "end_dialog" :void)
