(defpackage #:docker-cl-example/config/environments/production
  (:use #:cl))
(in-package #:docker-cl-example/config/environments/production)

`(:databases
  ((:maindb . (:postgres
               :host "maindb"
               :database-name "docker-cl-example"
               :username "docker-cl-example"
               :password "docker-cl-example"))))
