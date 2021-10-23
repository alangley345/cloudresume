resource "aws_acm_certificate" "resume" {
  domain_name       = "resume.aaronlangley.net"
  validation_method = "DNS"

  tags = {
    Purpose = "cloudresumechallenge"
  }

  lifecycle {
    prevent_destroy = true
  }
}
