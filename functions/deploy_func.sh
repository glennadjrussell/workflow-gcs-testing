gcloud functions deploy ingest-trigger \
       --region=us-central1 \
       --entry-point generate_filelist \
       --runtime python38 \
       --trigger-resource qbank-test-bucket \
       --trigger-http \
       --trigger-event google.storage.object.finalize \
       --service-account=353436123912-compute@developer.gserviceaccount.com
