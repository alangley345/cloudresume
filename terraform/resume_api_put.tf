resource "aws_apigatewayv2_integration" "putCount" {
  api_id                  = data.terraform_remote_state.base_state.outputs.api_aaronlangley_id
  integration_type        = "AWS_PROXY"
  payload_format_version  = "2.0"
  #credentials_arn         = aws_iam_role.resume_count_api.arn
  description             = "Run updateCount function to add 1 to visitor count"
  integration_method      = "POST"
  integration_uri         = aws_lambda_function.updateCount.arn
}

resource "aws_apigatewayv2_route" "resume_updateCount" {
  api_id     = data.terraform_remote_state.base_state.outputs.api_aaronlangley_id
  route_key  = "GET /updateCount"
  target     = "integrations/${aws_apigatewayv2_integration.putCount.id}"
  depends_on = [aws_apigatewayv2_integration.putCount]
}