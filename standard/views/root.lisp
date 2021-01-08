(defpackage #:docker-cl-example/views/root
  (:use #:cl
        #:lsx
        #:utopian)
  (:export #:index-page))
(in-package #:docker-cl-example/views/root)

(named-readtables:in-readtable :lsx-syntax)

(defview index-page ()
  ()
  (:render
   <html>
     <head>
       <title>index | docker-cl-example</title>
     </head>
     <body>
       <h1>index</h1>
     </body>
   </html>))
