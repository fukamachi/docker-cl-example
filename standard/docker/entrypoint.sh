#!/bin/bash

ros -e '(ql:quickload :docker-cl-example)'

exec start_server --port $PORT --signal-on-hup=QUIT --kill-old-delay=20 -- \
  .qlot/bin/clackup -s docker-cl-example app.lisp --address 0.0.0.0 --server woo --debug nil
