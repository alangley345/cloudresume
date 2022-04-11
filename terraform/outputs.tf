output "cloudresume_backend_secret" {
    value       = aws_iam_access_key.cloudresume_backend.secret
    description = "AWS Access Token Secret"
    sensitive = true
    
}

output "cloudresume_backend_ID" {
    value       = aws_iam_access_key.cloudresume_backend.id
    description = "AWS Access Token ID"
}
