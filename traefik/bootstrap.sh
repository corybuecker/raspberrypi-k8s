#!/bin/bash

set -e
set -u
set -o pipefail

export IFS=$'\n\t'

helm repo add traefik https://traefik.github.io/charts
helm repo update
helm upgrade --namespace kube-system --install -f routing.yaml traefik traefik/traefik