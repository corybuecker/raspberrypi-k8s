#!/bin/bash

set -e
set -u
set -o pipefail

export IFS=$'\n\t'

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
