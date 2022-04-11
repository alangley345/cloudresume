resource "aws_lambda_function" "updateCount" {
  filename      = "updateCount.zip"
  function_name = "updateCount"
  role          = aws_iam_role.resume_count_api.arn
  handler       = "updateCount.lambda_handler"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  source_code_hash = filebase64sha256("updateCount.zip")

  runtime = "python3.9"

  #environment {
  # variables = {
  #   foo = "bar"
  # }
  #}
}