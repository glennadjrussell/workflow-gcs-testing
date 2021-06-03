gcloud functions deploy ingest-trigger \
       --region=us-central1 \
       --entry-point generate_filelist \
       --runtime python38 \
       --trigger-http \
       --service-account=353436123912-compute@developer.gserviceaccount.com
