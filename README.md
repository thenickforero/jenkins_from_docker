# Jenkins From Docker

The purpose of this repo is build a local Jenkins Server using Docker and Docker Compose,
with persistence and support for building Docker Images,
based in the Latest long term support edition of Jenkins with JDK11

# How to use

Just run the `create_jenkins_container.sh` script and it will:

- Build the `jenkins:local` Image
- Start the service using `docker compose`

It should be run only once and the we can enable/disable the `Jenkins Server` with `docker compose up -d` / `docker compose down`