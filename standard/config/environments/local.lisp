(defpackage #:docker-cl-example/config/environments/local
  (:use #:cl))
(in-package #:docker-cl-example/config/environments/local)

`(:databases
  ((:maindb . (:postgres
               :host "maindb"
               :database-name "docker-cl-example"
               :username "docker-cl-example"
               :password "docker-cl-example")))
  :swank (:interface "0.0.0.0"
          :port ,(parse-integer (or (uiop:getenv "SWANK_PORT") "")
                                :junk-allowed t)))
