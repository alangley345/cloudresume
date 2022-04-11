resource "aws_apigatewayv2_stage" "resume" {
  api_id          = data.terraform_remote_state.base_state.outputs.api_aaronlangley_id
  name            = "resume"
  stage_variables = {}
  auto_deploy      = true
  tags            = {
    purpose: "cloudresumechallenge"
    Environment: "prod"
  }
}