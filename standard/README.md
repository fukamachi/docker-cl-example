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

## Development

### Connecting to Swank server in the container from the host machine

For Emacs/SLIME users, run `M-x slime-connect RET localhost RET 4006 RET` on your Emacs.
For other editor fans, follow its documentation and connect to `localhost:4006`.

### Restarting a web server without restarting a container

```
$ make reload
```

### Adding a dependency

1. Add a line to `qlfile` (See [Qlot documentation](https://github.com/fukamachi/qlot))
2. Run `make qlot-install`

## Updating a dependency

1. Change lines in `qlfile`
2. Run `make qlot-update`
