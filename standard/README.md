# docker-cl-example (Standard)

Sample web appliction to run on Docker.
This project shows how to use Docker with the following features:

* Clack, Woo
* RDBMS
* Swank server

## Requirements

* Docker Engine 19.03 or above
* Docker Compose 1.27 or above
  * (macOS) No need to install since it's included in Docker Desktop for Mac

## Build

```
$ make
$ make db
```

## Run

```
$ make up
```

## License

Copyright (c) 2021 Eitaro Fukamachi

Licensed under the MIT License.
