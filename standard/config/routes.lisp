(defpackage #:docker-cl-example/config/routes
  (:use #:cl
        #:utopian)
  (:export #:*routes*))
(in-package #:docker-cl-example/config/routes)

(defroutes *routes* ()
  (:controllers #P"../controllers/"))

(route :GET "/" "root:index")
