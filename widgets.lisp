(in-package #:cl-dialog)

(defcfun "dialog_yesno" :int
  (title :string)
  (cprompt :string)
  (height :int)
  (width :int))

(defun yesno (title prompt)
  (dialog-yesno title prompt 0 0))
