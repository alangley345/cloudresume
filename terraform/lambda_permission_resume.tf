resource "aws_lambda_permission" "resume_api_get" {
  statement_id  = "AllowResumeAPItoinvokeresumelambda"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.getCount.function_name}"
  principal     = "apigateway.amazonaws.com"

  source_arn    = "${data.terraform_remote_state.base_state.outputs.api_aaronlangley_execution_arn}/*/*"
}

resource "aws_lambda_permission" "resume_api_put" {
  statement_id  = "AllowResumeAPItoinvokeresumelambda"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.updateCount.function_name}"
  principal     = "apigateway.amazonaws.com"

  source_arn    = "${data.terraform_remote_state.base_state.outputs.api_aaronlangley_execution_arn}/*/*"
}