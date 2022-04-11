output "cloudfront_resume_distributionID" {   
    value = aws_cloudfront_distribution.resume.id 
}  

output "cloudfront_domain_name" {
    value = aws_cloudfront_distribution.resume.domain_name
}