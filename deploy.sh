#!/bin/bash
set -euxo pipefail

# Dockerイメージのビルド
docker build -t line-bot .

# GCRへpush
gcloud builds submit --tag gcr.io/tactical-curve-306812/line-bot --project tactical-curve-306812
