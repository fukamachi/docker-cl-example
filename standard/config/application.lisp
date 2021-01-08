(defpackage #:docker-cl-example/config/application
  (:use #:cl
        #:utopian)
  (:import-from #:lack.component
                #:to-app
                #:call)
  (:import-from #:lack
                #:builder)
  (:import-from #:cl-ppcre)
  (:export #:docker-cl-example-app))
(in-package #:docker-cl-example/config/application)

(defapp docker-cl-example-app ()
  ()
  (:config #P"environments/")
  ;(:content-type "text/html; charset=utf-8")
  )

(defmethod to-app ((app docker-cl-example-app))
  (builder
   (:static
    :path (lambda (path)
            (if (ppcre:scan "^(?:/assets/|/robot\\.txt$|/favicon\\.ico$)" path)
                path
                nil))
    :root (asdf:system-relative-pathname :docker-cl-example #P"public/"))
   :accesslog
   (:mito (db-settings :maindb))
   :session
   (call-next-method)))
