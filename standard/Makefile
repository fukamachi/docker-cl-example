all: build

.PHONY: build build_production
build:
	COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 docker-compose build
build_production:
	DOCKER_BUILDKIT=1 docker build -t ghcr.io/fukamachi/docker-cl-example-standard -f docker/Dockerfile-app-production .

.PHONY: db
db:
	docker-compose run --rm app .qlot/bin/utopian db migrate

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
