(in-package #:cl-dialog)

;;; dialog_buildlist

(defcfun "dialog_buildlist" :int
  (title :string)
  (cprompt :string)
  (height :int)
  (width :int)
  (list-height :int)
  (item-no :int)
  (items :pointer)
  (order-mode :int))

(defun buildlist (title prompt items
                  &optional
                    (height 0)
                    (width 0)
                    (list-height 0))

  (let* ((string-items (loop for item in items
                             collect (format nil "~a" item)))
         (citems (foreign-alloc :string
                                :initial-contents string-items
                                :null-terminated-p nil)))
    (format t "Items: ~a~%" string-items)
    (dialog-buildlist title prompt height width
                      list-height (length items) citems 0)))

;;; dialog_yesno

(defcfun "dialog_yesno" :int
  (title :string)
  (cprompt :string)
  (height :int)
  (width :int))

(defun yesno (title prompt)
  (dialog-yesno title prompt 0 0))


