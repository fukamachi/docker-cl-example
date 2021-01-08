(defpackage #:docker-cl-example/app
  (:use #:cl
        #:docker-cl-example/config/routes
        #:docker-cl-example/config/application)
  (:import-from #:utopian
                #:config
                #:with-config)
  (:import-from #:swank
                #:create-server))
(in-package #:docker-cl-example/app)

(defvar *app*
  (make-instance 'docker-cl-example-app
                 :routes *routes*
                 :models #P"models/"))

;; Start swank server
(with-config (*app*)
  (when (getf (config :swank) :port)
    (destructuring-bind (&key port interface)
        (config :swank)
      (swank:create-server :port port :interface interface))))

*app*
