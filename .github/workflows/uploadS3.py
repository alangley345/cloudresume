import boto3
 
# Initialize interfaces
#s3Client = boto3.client('s3')
s3Resource = boto3.resource('resume.aaronalangley.net')
 
# upload_file
boto3Upload = 'testfile.txt' 
s3Resource.meta.client.upload_file(boto3Upload,boto3Upload)
 