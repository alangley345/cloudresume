resource "aws_iam_user" "cloudresume_frontend" {
  name = "cloudresume-frontend"
  path = "/cloudresume/"

  tags = {
    Environment = "production"
    purpose     = "cloudresumechallenge"
  }
}