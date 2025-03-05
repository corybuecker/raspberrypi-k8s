#!/bin/bash

set -e
set -u
set -o pipefail

export IFS=$'\n\t'

# kubectl create namespace postgres
kubectl apply -n postgres -k .
