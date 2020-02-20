(in-package #:cl-dialog)

(defun example ()
  (dialog-init)
  (yesno "A Title" "A prompt")
  (end-dialog))
