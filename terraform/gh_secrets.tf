resource "github_actions_secret" "resume_distribution" {
  repository       = "cloudresume"
  secret_name      = "DISTRIBUTION_ID"
  encrypted_value  = "${aws_cloudfront_distribution.resume.id}"
}