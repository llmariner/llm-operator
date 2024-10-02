#!/usr/bin/env bash

set -euo pipefail

basedir=$(dirname "$0")

helm upgrade \
  --install \
  -n llmariner \
  llmariner \
  oci://public.ecr.aws/cloudnatix/llmariner-charts/llmariner \
  --set tags.worker=false \
  -f "${basedir}"/llmariner-values.yaml
