# docker-cl-example

Example projects showing how to run/develop Common Lisp web applications on Docker container.

This repository includes 2 types of projects.

* [minimum](./minimum/)
  * Run Clack application on Docker (port is `5000`)
  * Manage Common Lisp libraries with Qlot
  * Allow to reload Web server (Woo) without restarting a container
* [standard](./standard/)
  * Run Clack application on Docker (port is `5000`)
  * Manage Common Lisp libraries with Qlot
  * Allow to reload Web server (Woo) without restarting a container
  * Run RDBMS (PostgreSQL) container and allow to access from the app container
  * Run Swank server (Default port is `4006`)
  * Build production Docker image on GitHub Actions
    * Workflow file is [here](./.github/workflows/build-production-image.yml).
  * Publish production Docker image to GitHub Container Registry
    * [package/docker-cl-example-standard](https://github.com/users/fukamachi/packages/container/package/docker-cl-example-standard)

## Requirements

* Docker Engine 19.03 or above
* Docker Compose 1.27 or above
  * (macOS) No need to install since it's included in Docker Desktop for Mac
