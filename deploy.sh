#!/bin/bash
set -euxo pipefail

# build Docker image
docker build -t line-bot .

# push to GCR
gcloud builds submit --tag gcr.io/tactical-curve-306812/line-bot --project tactical-curve-306812

# deploy to CloudRun
gcloud run deploy line-bot --image gcr.io/tactical-curve-306812/line-bot:latest --region us-central1 --project tactical-curve-306812
