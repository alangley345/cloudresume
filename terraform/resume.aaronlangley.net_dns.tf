resource "aws_route53_record" "resume" {
  zone_id = data.terraform_remote_state.base_state.outputs.aaronlangley_zone_id
  name    = "resume.aaronlangley.net"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.resume.domain_name
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "resume_IPv6" {
  zone_id = data.terraform_remote_state.base_state.outputs.aaronlangley_zone_id
  name    = "resume.aaronlangley.net"
  type    = "AAAA"

  alias {
    name                   = aws_cloudfront_distribution.resume.domain_name
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = true
  }
}