resource "aws_apigatewayv2_integration" "getCount" {
  api_id                    = data.terraform_remote_state.base_state.outputs.api_aaronlangley_id
  integration_type          = "AWS_PROXY"
  payload_format_version    = "2.0"
  #credentials_arn           =  aws_iam_role.resume_count_api.arn
  description               = "Run getCount function to set visitor count"
  integration_method        = "POST"
  integration_uri           = aws_lambda_function.getCount.arn
}

resource "aws_apigatewayv2_route" "resume_getCount" {
  api_id    = data.terraform_remote_state.base_state.outputs.api_aaronlangley_id
  route_key = "GET /getCount"
  target    = "integrations/${aws_apigatewayv2_integration.getCount.id}"
  depends_on = [aws_apigatewayv2_integration.getCount]
}