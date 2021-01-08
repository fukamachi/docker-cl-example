(defsystem "docker-cl-example"
  :class :package-inferred-system
  :author "Eitaro Fukamachi"
  :version "0.0.1"
  :description "Sample web appliction to run on Docker."
  :depends-on ("docker-cl-example/main"
               "utopian"
               "swank"))

(register-system-packages "lack-component" '(#:lack.component))
