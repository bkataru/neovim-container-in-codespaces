#!/usr/bin/env bash

docker compose up -d
docker compose exec dev /usr/bin/fish
