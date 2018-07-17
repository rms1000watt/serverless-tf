// GENERATED FILE: DO NOT EDIT

data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

resource "aws_api_gateway_rest_api" "global" {
  name  = "${local.service_name}"

  count = "${local.api_gateway_0 || local.api_gateway_1 || local.api_gateway_2 || local.api_gateway_3 || local.api_gateway_4 || local.api_gateway_5 || local.api_gateway_6 || local.api_gateway_7 || local.api_gateway_8 || local.api_gateway_9 || false ? 1 : 0}"
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

resource "aws_api_gateway_resource" "1" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_1_path}"

  count = "${local.api_gateway_1_count}"
}

resource "aws_api_gateway_method" "1" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.1.id}"
  http_method   = "${local.api_gateway_1_method}"
  authorization = "${local.api_gateway_1_authorization}"

  count = "${local.api_gateway_1_count}"
}

resource "aws_api_gateway_integration" "1_go" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.1.resource_id}"
  http_method             = "${aws_api_gateway_method.1.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_go_1.arn}/invocations"

  count = "${local.lambda_go_1_count + local.api_gateway_1_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "1_py" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.1.resource_id}"
  http_method             = "${aws_api_gateway_method.1.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_py_1.arn}/invocations"

  count = "${local.lambda_py_1_count + local.api_gateway_1_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "1_js" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.1.resource_id}"
  http_method             = "${aws_api_gateway_method.1.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_js_1.arn}/invocations"

  count = "${local.lambda_js_1_count + local.api_gateway_1_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "1" {
  depends_on = [
    "aws_api_gateway_integration.1_go",
    "aws_api_gateway_integration.1_py",
    "aws_api_gateway_integration.1_js",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_1_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_1_count}"
}

resource "aws_lambda_permission" "1_go" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_1.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.1.http_method}${aws_api_gateway_resource.1.path}"

  count = "${local.lambda_go_1_count + local.api_gateway_1_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "1_py" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_1.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.1.http_method}${aws_api_gateway_resource.1.path}"

  count = "${local.lambda_py_1_count + local.api_gateway_1_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "1_js" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_1.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.1.http_method}${aws_api_gateway_resource.1.path}"

  count = "${local.lambda_js_1_count + local.api_gateway_1_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "2" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_2_path}"

  count = "${local.api_gateway_2_count}"
}

resource "aws_api_gateway_method" "2" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.2.id}"
  http_method   = "${local.api_gateway_2_method}"
  authorization = "${local.api_gateway_2_authorization}"

  count = "${local.api_gateway_2_count}"
}

resource "aws_api_gateway_integration" "2_go" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.2.resource_id}"
  http_method             = "${aws_api_gateway_method.2.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_go_2.arn}/invocations"

  count = "${local.lambda_go_2_count + local.api_gateway_2_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "2_py" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.2.resource_id}"
  http_method             = "${aws_api_gateway_method.2.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_py_2.arn}/invocations"

  count = "${local.lambda_py_2_count + local.api_gateway_2_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "2_js" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.2.resource_id}"
  http_method             = "${aws_api_gateway_method.2.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_js_2.arn}/invocations"

  count = "${local.lambda_js_2_count + local.api_gateway_2_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "2" {
  depends_on = [
    "aws_api_gateway_integration.2_go",
    "aws_api_gateway_integration.2_py",
    "aws_api_gateway_integration.2_js",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_2_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_2_count}"
}

resource "aws_lambda_permission" "2_go" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_2.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.2.http_method}${aws_api_gateway_resource.2.path}"

  count = "${local.lambda_go_2_count + local.api_gateway_2_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "2_py" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_2.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.2.http_method}${aws_api_gateway_resource.2.path}"

  count = "${local.lambda_py_2_count + local.api_gateway_2_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "2_js" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_2.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.2.http_method}${aws_api_gateway_resource.2.path}"

  count = "${local.lambda_js_2_count + local.api_gateway_2_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "3" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_3_path}"

  count = "${local.api_gateway_3_count}"
}

resource "aws_api_gateway_method" "3" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.3.id}"
  http_method   = "${local.api_gateway_3_method}"
  authorization = "${local.api_gateway_3_authorization}"

  count = "${local.api_gateway_3_count}"
}

resource "aws_api_gateway_integration" "3_go" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.3.resource_id}"
  http_method             = "${aws_api_gateway_method.3.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_go_3.arn}/invocations"

  count = "${local.lambda_go_3_count + local.api_gateway_3_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "3_py" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.3.resource_id}"
  http_method             = "${aws_api_gateway_method.3.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_py_3.arn}/invocations"

  count = "${local.lambda_py_3_count + local.api_gateway_3_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "3_js" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.3.resource_id}"
  http_method             = "${aws_api_gateway_method.3.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_js_3.arn}/invocations"

  count = "${local.lambda_js_3_count + local.api_gateway_3_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "3" {
  depends_on = [
    "aws_api_gateway_integration.3_go",
    "aws_api_gateway_integration.3_py",
    "aws_api_gateway_integration.3_js",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_3_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_3_count}"
}

resource "aws_lambda_permission" "3_go" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_3.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.3.http_method}${aws_api_gateway_resource.3.path}"

  count = "${local.lambda_go_3_count + local.api_gateway_3_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "3_py" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_3.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.3.http_method}${aws_api_gateway_resource.3.path}"

  count = "${local.lambda_py_3_count + local.api_gateway_3_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "3_js" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_3.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.3.http_method}${aws_api_gateway_resource.3.path}"

  count = "${local.lambda_js_3_count + local.api_gateway_3_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "4" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_4_path}"

  count = "${local.api_gateway_4_count}"
}

resource "aws_api_gateway_method" "4" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.4.id}"
  http_method   = "${local.api_gateway_4_method}"
  authorization = "${local.api_gateway_4_authorization}"

  count = "${local.api_gateway_4_count}"
}

resource "aws_api_gateway_integration" "4_go" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.4.resource_id}"
  http_method             = "${aws_api_gateway_method.4.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_go_4.arn}/invocations"

  count = "${local.lambda_go_4_count + local.api_gateway_4_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "4_py" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.4.resource_id}"
  http_method             = "${aws_api_gateway_method.4.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_py_4.arn}/invocations"

  count = "${local.lambda_py_4_count + local.api_gateway_4_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "4_js" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.4.resource_id}"
  http_method             = "${aws_api_gateway_method.4.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_js_4.arn}/invocations"

  count = "${local.lambda_js_4_count + local.api_gateway_4_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "4" {
  depends_on = [
    "aws_api_gateway_integration.4_go",
    "aws_api_gateway_integration.4_py",
    "aws_api_gateway_integration.4_js",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_4_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_4_count}"
}

resource "aws_lambda_permission" "4_go" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_4.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.4.http_method}${aws_api_gateway_resource.4.path}"

  count = "${local.lambda_go_4_count + local.api_gateway_4_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "4_py" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_4.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.4.http_method}${aws_api_gateway_resource.4.path}"

  count = "${local.lambda_py_4_count + local.api_gateway_4_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "4_js" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_4.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.4.http_method}${aws_api_gateway_resource.4.path}"

  count = "${local.lambda_js_4_count + local.api_gateway_4_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "5" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_5_path}"

  count = "${local.api_gateway_5_count}"
}

resource "aws_api_gateway_method" "5" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.5.id}"
  http_method   = "${local.api_gateway_5_method}"
  authorization = "${local.api_gateway_5_authorization}"

  count = "${local.api_gateway_5_count}"
}

resource "aws_api_gateway_integration" "5_go" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.5.resource_id}"
  http_method             = "${aws_api_gateway_method.5.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_go_5.arn}/invocations"

  count = "${local.lambda_go_5_count + local.api_gateway_5_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "5_py" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.5.resource_id}"
  http_method             = "${aws_api_gateway_method.5.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_py_5.arn}/invocations"

  count = "${local.lambda_py_5_count + local.api_gateway_5_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "5_js" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.5.resource_id}"
  http_method             = "${aws_api_gateway_method.5.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_js_5.arn}/invocations"

  count = "${local.lambda_js_5_count + local.api_gateway_5_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "5" {
  depends_on = [
    "aws_api_gateway_integration.5_go",
    "aws_api_gateway_integration.5_py",
    "aws_api_gateway_integration.5_js",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_5_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_5_count}"
}

resource "aws_lambda_permission" "5_go" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_5.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.5.http_method}${aws_api_gateway_resource.5.path}"

  count = "${local.lambda_go_5_count + local.api_gateway_5_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "5_py" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_5.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.5.http_method}${aws_api_gateway_resource.5.path}"

  count = "${local.lambda_py_5_count + local.api_gateway_5_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "5_js" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_5.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.5.http_method}${aws_api_gateway_resource.5.path}"

  count = "${local.lambda_js_5_count + local.api_gateway_5_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "6" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_6_path}"

  count = "${local.api_gateway_6_count}"
}

resource "aws_api_gateway_method" "6" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.6.id}"
  http_method   = "${local.api_gateway_6_method}"
  authorization = "${local.api_gateway_6_authorization}"

  count = "${local.api_gateway_6_count}"
}

resource "aws_api_gateway_integration" "6_go" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.6.resource_id}"
  http_method             = "${aws_api_gateway_method.6.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_go_6.arn}/invocations"

  count = "${local.lambda_go_6_count + local.api_gateway_6_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "6_py" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.6.resource_id}"
  http_method             = "${aws_api_gateway_method.6.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_py_6.arn}/invocations"

  count = "${local.lambda_py_6_count + local.api_gateway_6_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "6_js" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.6.resource_id}"
  http_method             = "${aws_api_gateway_method.6.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_js_6.arn}/invocations"

  count = "${local.lambda_js_6_count + local.api_gateway_6_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "6" {
  depends_on = [
    "aws_api_gateway_integration.6_go",
    "aws_api_gateway_integration.6_py",
    "aws_api_gateway_integration.6_js",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_6_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_6_count}"
}

resource "aws_lambda_permission" "6_go" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_6.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.6.http_method}${aws_api_gateway_resource.6.path}"

  count = "${local.lambda_go_6_count + local.api_gateway_6_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "6_py" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_6.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.6.http_method}${aws_api_gateway_resource.6.path}"

  count = "${local.lambda_py_6_count + local.api_gateway_6_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "6_js" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_6.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.6.http_method}${aws_api_gateway_resource.6.path}"

  count = "${local.lambda_js_6_count + local.api_gateway_6_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "7" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_7_path}"

  count = "${local.api_gateway_7_count}"
}

resource "aws_api_gateway_method" "7" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.7.id}"
  http_method   = "${local.api_gateway_7_method}"
  authorization = "${local.api_gateway_7_authorization}"

  count = "${local.api_gateway_7_count}"
}

resource "aws_api_gateway_integration" "7_go" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.7.resource_id}"
  http_method             = "${aws_api_gateway_method.7.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_go_7.arn}/invocations"

  count = "${local.lambda_go_7_count + local.api_gateway_7_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "7_py" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.7.resource_id}"
  http_method             = "${aws_api_gateway_method.7.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_py_7.arn}/invocations"

  count = "${local.lambda_py_7_count + local.api_gateway_7_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "7_js" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.7.resource_id}"
  http_method             = "${aws_api_gateway_method.7.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_js_7.arn}/invocations"

  count = "${local.lambda_js_7_count + local.api_gateway_7_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "7" {
  depends_on = [
    "aws_api_gateway_integration.7_go",
    "aws_api_gateway_integration.7_py",
    "aws_api_gateway_integration.7_js",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_7_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_7_count}"
}

resource "aws_lambda_permission" "7_go" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_7.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.7.http_method}${aws_api_gateway_resource.7.path}"

  count = "${local.lambda_go_7_count + local.api_gateway_7_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "7_py" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_7.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.7.http_method}${aws_api_gateway_resource.7.path}"

  count = "${local.lambda_py_7_count + local.api_gateway_7_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "7_js" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_7.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.7.http_method}${aws_api_gateway_resource.7.path}"

  count = "${local.lambda_js_7_count + local.api_gateway_7_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "8" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_8_path}"

  count = "${local.api_gateway_8_count}"
}

resource "aws_api_gateway_method" "8" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.8.id}"
  http_method   = "${local.api_gateway_8_method}"
  authorization = "${local.api_gateway_8_authorization}"

  count = "${local.api_gateway_8_count}"
}

resource "aws_api_gateway_integration" "8_go" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.8.resource_id}"
  http_method             = "${aws_api_gateway_method.8.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_go_8.arn}/invocations"

  count = "${local.lambda_go_8_count + local.api_gateway_8_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "8_py" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.8.resource_id}"
  http_method             = "${aws_api_gateway_method.8.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_py_8.arn}/invocations"

  count = "${local.lambda_py_8_count + local.api_gateway_8_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "8_js" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.8.resource_id}"
  http_method             = "${aws_api_gateway_method.8.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_js_8.arn}/invocations"

  count = "${local.lambda_js_8_count + local.api_gateway_8_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "8" {
  depends_on = [
    "aws_api_gateway_integration.8_go",
    "aws_api_gateway_integration.8_py",
    "aws_api_gateway_integration.8_js",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_8_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_8_count}"
}

resource "aws_lambda_permission" "8_go" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_8.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.8.http_method}${aws_api_gateway_resource.8.path}"

  count = "${local.lambda_go_8_count + local.api_gateway_8_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "8_py" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_8.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.8.http_method}${aws_api_gateway_resource.8.path}"

  count = "${local.lambda_py_8_count + local.api_gateway_8_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "8_js" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_8.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.8.http_method}${aws_api_gateway_resource.8.path}"

  count = "${local.lambda_js_8_count + local.api_gateway_8_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "9" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_9_path}"

  count = "${local.api_gateway_9_count}"
}

resource "aws_api_gateway_method" "9" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.9.id}"
  http_method   = "${local.api_gateway_9_method}"
  authorization = "${local.api_gateway_9_authorization}"

  count = "${local.api_gateway_9_count}"
}

resource "aws_api_gateway_integration" "9_go" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.9.resource_id}"
  http_method             = "${aws_api_gateway_method.9.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_go_9.arn}/invocations"

  count = "${local.lambda_go_9_count + local.api_gateway_9_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "9_py" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.9.resource_id}"
  http_method             = "${aws_api_gateway_method.9.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_py_9.arn}/invocations"

  count = "${local.lambda_py_9_count + local.api_gateway_9_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "9_js" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.9.resource_id}"
  http_method             = "${aws_api_gateway_method.9.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${aws_lambda_function.lambda_js_9.arn}/invocations"

  count = "${local.lambda_js_9_count + local.api_gateway_9_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "9" {
  depends_on = [
    "aws_api_gateway_integration.9_go",
    "aws_api_gateway_integration.9_py",
    "aws_api_gateway_integration.9_js",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_9_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_9_count}"
}

resource "aws_lambda_permission" "9_go" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_9.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.9.http_method}${aws_api_gateway_resource.9.path}"

  count = "${local.lambda_go_9_count + local.api_gateway_9_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "9_py" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_9.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.9.http_method}${aws_api_gateway_resource.9.path}"

  count = "${local.lambda_py_9_count + local.api_gateway_9_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "9_js" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_9.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.9.http_method}${aws_api_gateway_resource.9.path}"

  count = "${local.lambda_js_9_count + local.api_gateway_9_count == 2 ? 1 : 0}"
}
