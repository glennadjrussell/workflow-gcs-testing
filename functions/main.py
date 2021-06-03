import json
import google.cloud.storage as storage

def generate_filelist(req):
    as_json = req.get_json()

    bucket_name = as_json.get("bucket", None)
    import_pattern = as_json.get("pattern", None)

    print(f"Looking for {import_pattern} in {bucket_name}")

    result = []
    if bucket_name and import_pattern:
        gcs = storage.Client()
        bucket = gcs.bucket(bucket_name)
        all_files = gcs.list_blobs(bucket, prefix="import/")

        for f in all_files:
            fname = f.name
            if import_pattern in fname:
                result.append("gs://{}/{}".format(bucket_name, fname))
    else:
        result = "Both bucket_name and import_pattern arguments must be populated"

    return {"result": result}

