# line bot

```sh
# Dockerイメージのビルド
docker build -t line-bot .

# GCRへpush
gcloud builds submit --tag gcr.io/[project-name]/line-bot --project [project-name]
```

