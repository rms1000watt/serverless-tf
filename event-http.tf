// GENERATED FILE: DO NOT EDIT

data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

resource "aws_api_gateway_rest_api" "global" {
  name  = "${local.service_name}"

  count = "${local.api_gateway_0 || false ? 1 : 0}"
}

resource "aws_api_gateway_resource" "0" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_0_path}"

  count = "${local.api_gateway_0_count}"
}

resource "aws_api_gateway_method" "0" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.0.id}"
  http_method   = "${local.api_gateway_0_method}"
  authorization = "${local.api_gateway_0_authorization}"

  count = "${local.api_gateway_0_count}"
}

resource "aws_api_gateway_integration" "0_go" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.0.resource_id}"
  http_method             = "${aws_api_gateway_method.0.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_go_0.arn}/invocations"

  count = "${local.lambda_go_0_count + local.api_gateway_0_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "0_py" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.0.resource_id}"
  http_method             = "${aws_api_gateway_method.0.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_py_0.arn}/invocations"

  count = "${local.lambda_py_0_count + local.api_gateway_0_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "0_js" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.0.resource_id}"
  http_method             = "${aws_api_gateway_method.0.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_js_0.arn}/invocations"

  count = "${local.lambda_js_0_count + local.api_gateway_0_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "0" {
  depends_on = [
    "aws_api_gateway_integration.0_go",
    "aws_api_gateway_integration.0_py",
    "aws_api_gateway_integration.0_js",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_0_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_0_count}"
}

resource "aws_lambda_permission" "0_go" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_0.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.0.http_method}${aws_api_gateway_resource.0.path}"

  count = "${local.lambda_go_0_count + local.api_gateway_0_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "0_py" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_0.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.0.http_method}${aws_api_gateway_resource.0.path}"

  count = "${local.lambda_py_0_count + local.api_gateway_0_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "0_js" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_0.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.0.http_method}${aws_api_gateway_resource.0.path}"

  count = "${local.lambda_js_0_count + local.api_gateway_0_count == 2 ? 1 : 0}"
}
