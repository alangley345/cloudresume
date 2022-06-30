output "cloudfront_resume_distributionID" {   
    value = aws_cloudfront_distribution.resume.id 
}  

output "cloudfront_domain_name" {
    value = aws_cloudfront_distribution.resume.domain_name
}

output "s3_bucket_id" {
    value = aws_s3_bucket.resume.id
}