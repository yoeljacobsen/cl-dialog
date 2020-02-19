(in-package #:cl-dialog)

(defcfun "dialog_yesno" :int
  (title :string)
  (cprompt :string)
  (height :int)
  (width :int))
