#!/usr/bin/env bash
docker build -t jenkins:local .
docker compose up -d
