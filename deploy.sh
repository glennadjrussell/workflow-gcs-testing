gcloud workflows deploy gcs-workflow \
        --location=us-central1 \
        --description='Loading files from GCS' \
        --source=./workflow.yaml \
        --project qbank-266411 \
        --service-account=353436123912-compute@developer.gserviceaccount.com
