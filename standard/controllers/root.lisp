(defpackage #:docker-cl-example/controllers/root
  (:use #:cl
        #:utopian
        #:docker-cl-example/views/root)
  (:export #:index))
(in-package #:docker-cl-example/controllers/root)

(defun index (params)
  (declare (ignore params))
  (render 'index-page))
