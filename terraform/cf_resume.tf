#frontend for resume.aaronlangley.net
resource "aws_cloudfront_distribution" "resumesite" {
  enabled             = true
  default_root_object = "index.html"
  
  #depends_on = [aws_s3_bucket.site-bucket, aws_acm_certificate.resume]
  
  aliases = ["resume.aaronlangley.net"]

  comment = "Cloud Resume Challenge"

   lifecycle {
    prevent_destroy = true
  }

  default_cache_behavior {
    allowed_methods        = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = aws_s3_bucket.resume.id
    viewer_protocol_policy = "redirect-to-https"
    compress               = true

    min_ttl     = 0
    default_ttl = 5 * 60
    max_ttl     = 60 * 60

    forwarded_values {
      query_string = true

      cookies {
        forward = "none"
      }
    }
  }

  origin {
    domain_name = "resume.aaronlangley.net"
    custom_origin_config = {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "redirect-to-https"
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  }
  
  price_class = "PriceClass_100"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  
  tags = {
    purpose = "cloudresumechallenge"
  }

  viewer_certificate {
    cloudfront_default_certificate = true
    #acm_certificate_arn      = aws_acm_certificate.cert.arn
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1.2_2021"
  }
}