resource "aws_acm_certificate" "cert" {
  domain_name       = "resume.aaronlangley.net"
  validation_method = "DNS"

  tags = {
    Purpose = "cloudresumechallenge"
  }

  lifecycle {
    prevent_destroy = true
  }
}
