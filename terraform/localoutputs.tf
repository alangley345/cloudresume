resource "local_file" "bucket_name" {
    content  = aws_s3_bucket.resume.bucket_name
    filename = "s3bucketname.txt"
}

resource "local_file" "private_key" {
    content  = aws_cloudfront_distribution.resume.id
    filename = "cloudfrontdistribution.txt"
}
