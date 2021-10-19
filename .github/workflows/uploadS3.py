#!/usr/bin/env python3

import pathlib
import boto3


BASE_DIR = pathlib.Path(__file__).parent.resolve()

region = "us-east-2"
bucket = "resume."

s3_client = boto3.client("s3", region_name="us-east-2")

def upload_files(file_name, bucket, object_name=None, args=None):
    if object_name is None:
        object_name = file_name

    s3_client.upload_file(file_name, bucket, object_name, ExtraArgs=args)
    print(f"'{file_name}' has been uploaded to ' {bucket}")

upload_files(f"{BASE_DIR}/files/demo.txt", bucket)