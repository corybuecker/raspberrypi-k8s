#!/bin/bash

set -e

helm install \
  cert-manager oci://quay.io/jetstack/charts/cert-manager \
  --version v1.20.2 \
  --namespace cert-manager \
  --create-namespace \
  --verify \
  --keyring ./cert-manager-keyring-2021-09-20-1020CF3C033D4F35BAE1C19E1226061C665DF13E.gpg \
  --set crds.enabled=true \
  --set prometheus.enabled=false \
  --set config.enableGatewayAPI=true
