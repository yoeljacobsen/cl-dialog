(in-package #:cl-dialog)

(defun test-yesno ()
  (dialog-init)
  (yesno "A Title" "A prompt")
  (end-dialog))

(defun test-buildlist()
  (dialog-init)
  (buildlist "A Title" "A prompt" '(one two three for five))
  (end-dialog))
