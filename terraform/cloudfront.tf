locals {
  s3_origin_id = "cloudresumechallenge"
}

resource "aws_cloudfront_distribution" "resumesite" {
  enabled             = true
  default_root_object = "index.html"
  
  depends_on = [aws_s3_bucket.site-bucket, aws_acm_certificate.cert]

  default_cache_behavior {
    allowed_methods        = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = local.s3_origin_id
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
    domain_name = aws_s3_bucket.site-bucket.bucket_regional_domain_name
    origin_id   = local.s3_origin_id

    #s3_origin_config {
    #  origin_access_identity = aws_cloudfront_origin_access_identity.gitbook.cloudfront_access_identity_path
    #}
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn      = aws_acm_certificate.cert.arn
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1.2_2021"
  }
}