# docker-cl-example (Minimum)

Sample web appliction to run on Docker.
This project shows how to use Docker with the following features:

* Clack, Woo

## Requirements

* Docker Engine 19.03 or above
* Docker Compose 1.27 or above
  * (macOS) No need to install since it's included in Docker Desktop for Mac

## Build

```
$ make
```

## Run

```
$ make up
```

## Development

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
