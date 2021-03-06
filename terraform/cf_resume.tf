resource "aws_cloudfront_distribution" "resume" {
  origin {
    domain_name = aws_s3_bucket.resume.bucket_regional_domain_name
    origin_id   = "mycloudresume"

    s3_origin_config {
      origin_access_identity = "${aws_cloudfront_origin_access_identity.resume.cloudfront_access_identity_path}"
    }

  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "Cloud Resume Frontend"
  default_root_object = "index.html"

  #logging_config {
  # include_cookies = false
  # bucket          = "mylogs.s3.amazonaws.com"
  # prefix          = "myprefix"
  #}


  aliases = ["resume.aaronlangley.net"]

  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "mycloudresume"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  price_class = "PriceClass_100"

  restrictions {
    geo_restriction {
      restriction_type = "none"

    }
  }

  tags = {
    Environment = "production"
    purpose     = "cloudresumechallenge"
  }

  viewer_certificate {
    acm_certificate_arn      = data.terraform_remote_state.base_state.outputs.wildcard_arn
    minimum_protocol_version = "TLSv1.2_2019"
    ssl_support_method       = "sni-only"
  }
}

resource "aws_cloudfront_origin_access_identity" "resume" {
  comment = "Used for accessing resume.aaronlangley.net"
}