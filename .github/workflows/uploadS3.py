import boto3
 
# Initialize interfaces
#s3Client = boto3.client('s3')
s3Resource = boto3.resource('s3')
 
# upload_file
boto3Upload = '' 
s3Resource.meta.client.upload_file(boto3Upload, 'gpipis-bucket', boto3Upload)
 