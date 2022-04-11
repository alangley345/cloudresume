resource "aws_apigatewayv2_api_mapping" "resume" {
  api_id      = data.terraform_remote_state.base_state.outputs.api_aaronlangley_id
  domain_name = data.terraform_remote_state.base_state.outputs.api_aaronlangley_domain_name
  stage       = aws_apigatewayv2_stage.resume.id
}