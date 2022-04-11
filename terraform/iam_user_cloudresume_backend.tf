resource "aws_iam_user" "cloudresume_backend" {
  name = "cloudresume-backend"
  path = "/cloudresume/"

  tags = {
    purpose = "cloudresumechallenge"
  }
}
