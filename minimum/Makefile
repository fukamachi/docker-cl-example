all: build

.PHONY: build
build:
	COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker-compose build

.PHONY: up
up:
	docker-compose up -V $(service)

.PHONY: down
down:
	docker-compose down

.PHONY: reload
reload:
	docker-compose kill -s HUP $(service)

.PHONY: run-qlot-install qlot-install
run-qlot-install:
	docker run --rm -t -v ${PWD}:/app fukamachi/qlot install --no-deps
qlot-install: run-qlot-install build

.PHONY: run-qlot-update qlot-update
run-qlot-update:
	docker run --rm -t -v ${PWD}:/app fukamachi/qlot update --no-deps
qlot-update: run-qlot-update build
