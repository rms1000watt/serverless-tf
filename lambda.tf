// GENERATED FILE: DO NOT EDIT

resource "aws_lambda_function" "lambda_go_0" {
  filename         = "${local.lambda_go_0_zip}"
  function_name    = "${local.lambda_go_0_name}"
  handler          = "${local.lambda_go_0_handler}"
  role             = "${local.lambda_0_role_arn != "" ? local.lambda_0_role_arn  : aws_iam_role.lambda_0.arn}"
  source_code_hash = "${data.archive_file.lambda_go_0.output_base64sha256}"
  runtime          = "${local.lambda_go_0_runtime}"
  timeout          = "${local.lambda_0_timeout}"

  environment {
    variables = "${local.lambda_0_env}"
  }

  count = "${local.lambda_go_0_count}"
}

resource "aws_lambda_function" "lambda_py_0" {
  filename         = "${local.lambda_py_0_zip}"
  function_name    = "${local.lambda_py_0_name}"
  handler          = "${local.lambda_py_0_handler}"
  role             = "${local.lambda_0_role_arn != "" ? local.lambda_0_role_arn  : aws_iam_role.lambda_0.arn}"
  source_code_hash = "${data.archive_file.lambda_py_0.output_base64sha256}"
  runtime          = "${local.lambda_py_0_runtime}"
  timeout          = "${local.lambda_0_timeout}"

  environment {
    variables = "${local.lambda_0_env}"
  }

  count = "${local.lambda_py_0_count}"
}

resource "aws_lambda_function" "lambda_js_0" {
  filename         = "${local.lambda_js_0_zip}"
  function_name    = "${local.lambda_js_0_name}"
  handler          = "${local.lambda_js_0_handler}"
  role             = "${local.lambda_0_role_arn != "" ? local.lambda_0_role_arn  : aws_iam_role.lambda_0.arn}"
  source_code_hash = "${data.archive_file.lambda_js_0.output_base64sha256}"
  runtime          = "${local.lambda_js_0_runtime}"
  timeout          = "${local.lambda_0_timeout}"

  environment {
    variables = "${local.lambda_0_env}"
  }

  count = "${local.lambda_js_0_count}"
}

resource "aws_lambda_permission" "cloudwatch_0" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_0_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.0.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_0",
    "aws_lambda_function.lambda_py_0",
    "aws_lambda_function.lambda_js_0",
  ]

  count = "${local.cloudwatch_0_count}"
}

resource "aws_lambda_permission" "api_gateway_0_n_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_0_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.0_n_auth.http_method}${aws_api_gateway_resource.0.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_0",
    "aws_lambda_function.lambda_py_0",
    "aws_lambda_function.lambda_js_0",
  ]

  count = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_0_w_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_0_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.0_w_auth.http_method}${aws_api_gateway_resource.0.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_0",
    "aws_lambda_function.lambda_py_0",
    "aws_lambda_function.lambda_js_0",
  ]

  count = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_1" {
  filename         = "${local.lambda_go_1_zip}"
  function_name    = "${local.lambda_go_1_name}"
  handler          = "${local.lambda_go_1_handler}"
  role             = "${local.lambda_1_role_arn != "" ? local.lambda_1_role_arn  : aws_iam_role.lambda_1.arn}"
  source_code_hash = "${data.archive_file.lambda_go_1.output_base64sha256}"
  runtime          = "${local.lambda_go_1_runtime}"
  timeout          = "${local.lambda_1_timeout}"

  environment {
    variables = "${local.lambda_1_env}"
  }

  count = "${local.lambda_go_1_count}"
}

resource "aws_lambda_function" "lambda_py_1" {
  filename         = "${local.lambda_py_1_zip}"
  function_name    = "${local.lambda_py_1_name}"
  handler          = "${local.lambda_py_1_handler}"
  role             = "${local.lambda_1_role_arn != "" ? local.lambda_1_role_arn  : aws_iam_role.lambda_1.arn}"
  source_code_hash = "${data.archive_file.lambda_py_1.output_base64sha256}"
  runtime          = "${local.lambda_py_1_runtime}"
  timeout          = "${local.lambda_1_timeout}"

  environment {
    variables = "${local.lambda_1_env}"
  }

  count = "${local.lambda_py_1_count}"
}

resource "aws_lambda_function" "lambda_js_1" {
  filename         = "${local.lambda_js_1_zip}"
  function_name    = "${local.lambda_js_1_name}"
  handler          = "${local.lambda_js_1_handler}"
  role             = "${local.lambda_1_role_arn != "" ? local.lambda_1_role_arn  : aws_iam_role.lambda_1.arn}"
  source_code_hash = "${data.archive_file.lambda_js_1.output_base64sha256}"
  runtime          = "${local.lambda_js_1_runtime}"
  timeout          = "${local.lambda_1_timeout}"

  environment {
    variables = "${local.lambda_1_env}"
  }

  count = "${local.lambda_js_1_count}"
}

resource "aws_lambda_permission" "cloudwatch_1" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_1_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.1.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_1",
    "aws_lambda_function.lambda_py_1",
    "aws_lambda_function.lambda_js_1",
  ]

  count = "${local.cloudwatch_1_count}"
}

resource "aws_lambda_permission" "api_gateway_1_n_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_1_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.1_n_auth.http_method}${aws_api_gateway_resource.1.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_1",
    "aws_lambda_function.lambda_py_1",
    "aws_lambda_function.lambda_js_1",
  ]

  count = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_1_w_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_1_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.1_w_auth.http_method}${aws_api_gateway_resource.1.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_1",
    "aws_lambda_function.lambda_py_1",
    "aws_lambda_function.lambda_js_1",
  ]

  count = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_2" {
  filename         = "${local.lambda_go_2_zip}"
  function_name    = "${local.lambda_go_2_name}"
  handler          = "${local.lambda_go_2_handler}"
  role             = "${local.lambda_2_role_arn != "" ? local.lambda_2_role_arn  : aws_iam_role.lambda_2.arn}"
  source_code_hash = "${data.archive_file.lambda_go_2.output_base64sha256}"
  runtime          = "${local.lambda_go_2_runtime}"
  timeout          = "${local.lambda_2_timeout}"

  environment {
    variables = "${local.lambda_2_env}"
  }

  count = "${local.lambda_go_2_count}"
}

resource "aws_lambda_function" "lambda_py_2" {
  filename         = "${local.lambda_py_2_zip}"
  function_name    = "${local.lambda_py_2_name}"
  handler          = "${local.lambda_py_2_handler}"
  role             = "${local.lambda_2_role_arn != "" ? local.lambda_2_role_arn  : aws_iam_role.lambda_2.arn}"
  source_code_hash = "${data.archive_file.lambda_py_2.output_base64sha256}"
  runtime          = "${local.lambda_py_2_runtime}"
  timeout          = "${local.lambda_2_timeout}"

  environment {
    variables = "${local.lambda_2_env}"
  }

  count = "${local.lambda_py_2_count}"
}

resource "aws_lambda_function" "lambda_js_2" {
  filename         = "${local.lambda_js_2_zip}"
  function_name    = "${local.lambda_js_2_name}"
  handler          = "${local.lambda_js_2_handler}"
  role             = "${local.lambda_2_role_arn != "" ? local.lambda_2_role_arn  : aws_iam_role.lambda_2.arn}"
  source_code_hash = "${data.archive_file.lambda_js_2.output_base64sha256}"
  runtime          = "${local.lambda_js_2_runtime}"
  timeout          = "${local.lambda_2_timeout}"

  environment {
    variables = "${local.lambda_2_env}"
  }

  count = "${local.lambda_js_2_count}"
}

resource "aws_lambda_permission" "cloudwatch_2" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_2_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.2.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_2",
    "aws_lambda_function.lambda_py_2",
    "aws_lambda_function.lambda_js_2",
  ]

  count = "${local.cloudwatch_2_count}"
}

resource "aws_lambda_permission" "api_gateway_2_n_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_2_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.2_n_auth.http_method}${aws_api_gateway_resource.2.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_2",
    "aws_lambda_function.lambda_py_2",
    "aws_lambda_function.lambda_js_2",
  ]

  count = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_2_w_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_2_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.2_w_auth.http_method}${aws_api_gateway_resource.2.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_2",
    "aws_lambda_function.lambda_py_2",
    "aws_lambda_function.lambda_js_2",
  ]

  count = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_3" {
  filename         = "${local.lambda_go_3_zip}"
  function_name    = "${local.lambda_go_3_name}"
  handler          = "${local.lambda_go_3_handler}"
  role             = "${local.lambda_3_role_arn != "" ? local.lambda_3_role_arn  : aws_iam_role.lambda_3.arn}"
  source_code_hash = "${data.archive_file.lambda_go_3.output_base64sha256}"
  runtime          = "${local.lambda_go_3_runtime}"
  timeout          = "${local.lambda_3_timeout}"

  environment {
    variables = "${local.lambda_3_env}"
  }

  count = "${local.lambda_go_3_count}"
}

resource "aws_lambda_function" "lambda_py_3" {
  filename         = "${local.lambda_py_3_zip}"
  function_name    = "${local.lambda_py_3_name}"
  handler          = "${local.lambda_py_3_handler}"
  role             = "${local.lambda_3_role_arn != "" ? local.lambda_3_role_arn  : aws_iam_role.lambda_3.arn}"
  source_code_hash = "${data.archive_file.lambda_py_3.output_base64sha256}"
  runtime          = "${local.lambda_py_3_runtime}"
  timeout          = "${local.lambda_3_timeout}"

  environment {
    variables = "${local.lambda_3_env}"
  }

  count = "${local.lambda_py_3_count}"
}

resource "aws_lambda_function" "lambda_js_3" {
  filename         = "${local.lambda_js_3_zip}"
  function_name    = "${local.lambda_js_3_name}"
  handler          = "${local.lambda_js_3_handler}"
  role             = "${local.lambda_3_role_arn != "" ? local.lambda_3_role_arn  : aws_iam_role.lambda_3.arn}"
  source_code_hash = "${data.archive_file.lambda_js_3.output_base64sha256}"
  runtime          = "${local.lambda_js_3_runtime}"
  timeout          = "${local.lambda_3_timeout}"

  environment {
    variables = "${local.lambda_3_env}"
  }

  count = "${local.lambda_js_3_count}"
}

resource "aws_lambda_permission" "cloudwatch_3" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_3_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.3.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_3",
    "aws_lambda_function.lambda_py_3",
    "aws_lambda_function.lambda_js_3",
  ]

  count = "${local.cloudwatch_3_count}"
}

resource "aws_lambda_permission" "api_gateway_3_n_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_3_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.3_n_auth.http_method}${aws_api_gateway_resource.3.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_3",
    "aws_lambda_function.lambda_py_3",
    "aws_lambda_function.lambda_js_3",
  ]

  count = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_3_w_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_3_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.3_w_auth.http_method}${aws_api_gateway_resource.3.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_3",
    "aws_lambda_function.lambda_py_3",
    "aws_lambda_function.lambda_js_3",
  ]

  count = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_4" {
  filename         = "${local.lambda_go_4_zip}"
  function_name    = "${local.lambda_go_4_name}"
  handler          = "${local.lambda_go_4_handler}"
  role             = "${local.lambda_4_role_arn != "" ? local.lambda_4_role_arn  : aws_iam_role.lambda_4.arn}"
  source_code_hash = "${data.archive_file.lambda_go_4.output_base64sha256}"
  runtime          = "${local.lambda_go_4_runtime}"
  timeout          = "${local.lambda_4_timeout}"

  environment {
    variables = "${local.lambda_4_env}"
  }

  count = "${local.lambda_go_4_count}"
}

resource "aws_lambda_function" "lambda_py_4" {
  filename         = "${local.lambda_py_4_zip}"
  function_name    = "${local.lambda_py_4_name}"
  handler          = "${local.lambda_py_4_handler}"
  role             = "${local.lambda_4_role_arn != "" ? local.lambda_4_role_arn  : aws_iam_role.lambda_4.arn}"
  source_code_hash = "${data.archive_file.lambda_py_4.output_base64sha256}"
  runtime          = "${local.lambda_py_4_runtime}"
  timeout          = "${local.lambda_4_timeout}"

  environment {
    variables = "${local.lambda_4_env}"
  }

  count = "${local.lambda_py_4_count}"
}

resource "aws_lambda_function" "lambda_js_4" {
  filename         = "${local.lambda_js_4_zip}"
  function_name    = "${local.lambda_js_4_name}"
  handler          = "${local.lambda_js_4_handler}"
  role             = "${local.lambda_4_role_arn != "" ? local.lambda_4_role_arn  : aws_iam_role.lambda_4.arn}"
  source_code_hash = "${data.archive_file.lambda_js_4.output_base64sha256}"
  runtime          = "${local.lambda_js_4_runtime}"
  timeout          = "${local.lambda_4_timeout}"

  environment {
    variables = "${local.lambda_4_env}"
  }

  count = "${local.lambda_js_4_count}"
}

resource "aws_lambda_permission" "cloudwatch_4" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_4_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.4.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_4",
    "aws_lambda_function.lambda_py_4",
    "aws_lambda_function.lambda_js_4",
  ]

  count = "${local.cloudwatch_4_count}"
}

resource "aws_lambda_permission" "api_gateway_4_n_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_4_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.4_n_auth.http_method}${aws_api_gateway_resource.4.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_4",
    "aws_lambda_function.lambda_py_4",
    "aws_lambda_function.lambda_js_4",
  ]

  count = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_4_w_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_4_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.4_w_auth.http_method}${aws_api_gateway_resource.4.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_4",
    "aws_lambda_function.lambda_py_4",
    "aws_lambda_function.lambda_js_4",
  ]

  count = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_5" {
  filename         = "${local.lambda_go_5_zip}"
  function_name    = "${local.lambda_go_5_name}"
  handler          = "${local.lambda_go_5_handler}"
  role             = "${local.lambda_5_role_arn != "" ? local.lambda_5_role_arn  : aws_iam_role.lambda_5.arn}"
  source_code_hash = "${data.archive_file.lambda_go_5.output_base64sha256}"
  runtime          = "${local.lambda_go_5_runtime}"
  timeout          = "${local.lambda_5_timeout}"

  environment {
    variables = "${local.lambda_5_env}"
  }

  count = "${local.lambda_go_5_count}"
}

resource "aws_lambda_function" "lambda_py_5" {
  filename         = "${local.lambda_py_5_zip}"
  function_name    = "${local.lambda_py_5_name}"
  handler          = "${local.lambda_py_5_handler}"
  role             = "${local.lambda_5_role_arn != "" ? local.lambda_5_role_arn  : aws_iam_role.lambda_5.arn}"
  source_code_hash = "${data.archive_file.lambda_py_5.output_base64sha256}"
  runtime          = "${local.lambda_py_5_runtime}"
  timeout          = "${local.lambda_5_timeout}"

  environment {
    variables = "${local.lambda_5_env}"
  }

  count = "${local.lambda_py_5_count}"
}

resource "aws_lambda_function" "lambda_js_5" {
  filename         = "${local.lambda_js_5_zip}"
  function_name    = "${local.lambda_js_5_name}"
  handler          = "${local.lambda_js_5_handler}"
  role             = "${local.lambda_5_role_arn != "" ? local.lambda_5_role_arn  : aws_iam_role.lambda_5.arn}"
  source_code_hash = "${data.archive_file.lambda_js_5.output_base64sha256}"
  runtime          = "${local.lambda_js_5_runtime}"
  timeout          = "${local.lambda_5_timeout}"

  environment {
    variables = "${local.lambda_5_env}"
  }

  count = "${local.lambda_js_5_count}"
}

resource "aws_lambda_permission" "cloudwatch_5" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_5_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.5.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_5",
    "aws_lambda_function.lambda_py_5",
    "aws_lambda_function.lambda_js_5",
  ]

  count = "${local.cloudwatch_5_count}"
}

resource "aws_lambda_permission" "api_gateway_5_n_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_5_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.5_n_auth.http_method}${aws_api_gateway_resource.5.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_5",
    "aws_lambda_function.lambda_py_5",
    "aws_lambda_function.lambda_js_5",
  ]

  count = "${local.api_gateway_5_count + local.api_gateway_5_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_5_w_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_5_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.5_w_auth.http_method}${aws_api_gateway_resource.5.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_5",
    "aws_lambda_function.lambda_py_5",
    "aws_lambda_function.lambda_js_5",
  ]

  count = "${local.api_gateway_5_count + local.api_gateway_5_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_6" {
  filename         = "${local.lambda_go_6_zip}"
  function_name    = "${local.lambda_go_6_name}"
  handler          = "${local.lambda_go_6_handler}"
  role             = "${local.lambda_6_role_arn != "" ? local.lambda_6_role_arn  : aws_iam_role.lambda_6.arn}"
  source_code_hash = "${data.archive_file.lambda_go_6.output_base64sha256}"
  runtime          = "${local.lambda_go_6_runtime}"
  timeout          = "${local.lambda_6_timeout}"

  environment {
    variables = "${local.lambda_6_env}"
  }

  count = "${local.lambda_go_6_count}"
}

resource "aws_lambda_function" "lambda_py_6" {
  filename         = "${local.lambda_py_6_zip}"
  function_name    = "${local.lambda_py_6_name}"
  handler          = "${local.lambda_py_6_handler}"
  role             = "${local.lambda_6_role_arn != "" ? local.lambda_6_role_arn  : aws_iam_role.lambda_6.arn}"
  source_code_hash = "${data.archive_file.lambda_py_6.output_base64sha256}"
  runtime          = "${local.lambda_py_6_runtime}"
  timeout          = "${local.lambda_6_timeout}"

  environment {
    variables = "${local.lambda_6_env}"
  }

  count = "${local.lambda_py_6_count}"
}

resource "aws_lambda_function" "lambda_js_6" {
  filename         = "${local.lambda_js_6_zip}"
  function_name    = "${local.lambda_js_6_name}"
  handler          = "${local.lambda_js_6_handler}"
  role             = "${local.lambda_6_role_arn != "" ? local.lambda_6_role_arn  : aws_iam_role.lambda_6.arn}"
  source_code_hash = "${data.archive_file.lambda_js_6.output_base64sha256}"
  runtime          = "${local.lambda_js_6_runtime}"
  timeout          = "${local.lambda_6_timeout}"

  environment {
    variables = "${local.lambda_6_env}"
  }

  count = "${local.lambda_js_6_count}"
}

resource "aws_lambda_permission" "cloudwatch_6" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_6_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.6.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_6",
    "aws_lambda_function.lambda_py_6",
    "aws_lambda_function.lambda_js_6",
  ]

  count = "${local.cloudwatch_6_count}"
}

resource "aws_lambda_permission" "api_gateway_6_n_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_6_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.6_n_auth.http_method}${aws_api_gateway_resource.6.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_6",
    "aws_lambda_function.lambda_py_6",
    "aws_lambda_function.lambda_js_6",
  ]

  count = "${local.api_gateway_6_count + local.api_gateway_6_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_6_w_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_6_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.6_w_auth.http_method}${aws_api_gateway_resource.6.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_6",
    "aws_lambda_function.lambda_py_6",
    "aws_lambda_function.lambda_js_6",
  ]

  count = "${local.api_gateway_6_count + local.api_gateway_6_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_7" {
  filename         = "${local.lambda_go_7_zip}"
  function_name    = "${local.lambda_go_7_name}"
  handler          = "${local.lambda_go_7_handler}"
  role             = "${local.lambda_7_role_arn != "" ? local.lambda_7_role_arn  : aws_iam_role.lambda_7.arn}"
  source_code_hash = "${data.archive_file.lambda_go_7.output_base64sha256}"
  runtime          = "${local.lambda_go_7_runtime}"
  timeout          = "${local.lambda_7_timeout}"

  environment {
    variables = "${local.lambda_7_env}"
  }

  count = "${local.lambda_go_7_count}"
}

resource "aws_lambda_function" "lambda_py_7" {
  filename         = "${local.lambda_py_7_zip}"
  function_name    = "${local.lambda_py_7_name}"
  handler          = "${local.lambda_py_7_handler}"
  role             = "${local.lambda_7_role_arn != "" ? local.lambda_7_role_arn  : aws_iam_role.lambda_7.arn}"
  source_code_hash = "${data.archive_file.lambda_py_7.output_base64sha256}"
  runtime          = "${local.lambda_py_7_runtime}"
  timeout          = "${local.lambda_7_timeout}"

  environment {
    variables = "${local.lambda_7_env}"
  }

  count = "${local.lambda_py_7_count}"
}

resource "aws_lambda_function" "lambda_js_7" {
  filename         = "${local.lambda_js_7_zip}"
  function_name    = "${local.lambda_js_7_name}"
  handler          = "${local.lambda_js_7_handler}"
  role             = "${local.lambda_7_role_arn != "" ? local.lambda_7_role_arn  : aws_iam_role.lambda_7.arn}"
  source_code_hash = "${data.archive_file.lambda_js_7.output_base64sha256}"
  runtime          = "${local.lambda_js_7_runtime}"
  timeout          = "${local.lambda_7_timeout}"

  environment {
    variables = "${local.lambda_7_env}"
  }

  count = "${local.lambda_js_7_count}"
}

resource "aws_lambda_permission" "cloudwatch_7" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_7_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.7.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_7",
    "aws_lambda_function.lambda_py_7",
    "aws_lambda_function.lambda_js_7",
  ]

  count = "${local.cloudwatch_7_count}"
}

resource "aws_lambda_permission" "api_gateway_7_n_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_7_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.7_n_auth.http_method}${aws_api_gateway_resource.7.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_7",
    "aws_lambda_function.lambda_py_7",
    "aws_lambda_function.lambda_js_7",
  ]

  count = "${local.api_gateway_7_count + local.api_gateway_7_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_7_w_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_7_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.7_w_auth.http_method}${aws_api_gateway_resource.7.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_7",
    "aws_lambda_function.lambda_py_7",
    "aws_lambda_function.lambda_js_7",
  ]

  count = "${local.api_gateway_7_count + local.api_gateway_7_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_8" {
  filename         = "${local.lambda_go_8_zip}"
  function_name    = "${local.lambda_go_8_name}"
  handler          = "${local.lambda_go_8_handler}"
  role             = "${local.lambda_8_role_arn != "" ? local.lambda_8_role_arn  : aws_iam_role.lambda_8.arn}"
  source_code_hash = "${data.archive_file.lambda_go_8.output_base64sha256}"
  runtime          = "${local.lambda_go_8_runtime}"
  timeout          = "${local.lambda_8_timeout}"

  environment {
    variables = "${local.lambda_8_env}"
  }

  count = "${local.lambda_go_8_count}"
}

resource "aws_lambda_function" "lambda_py_8" {
  filename         = "${local.lambda_py_8_zip}"
  function_name    = "${local.lambda_py_8_name}"
  handler          = "${local.lambda_py_8_handler}"
  role             = "${local.lambda_8_role_arn != "" ? local.lambda_8_role_arn  : aws_iam_role.lambda_8.arn}"
  source_code_hash = "${data.archive_file.lambda_py_8.output_base64sha256}"
  runtime          = "${local.lambda_py_8_runtime}"
  timeout          = "${local.lambda_8_timeout}"

  environment {
    variables = "${local.lambda_8_env}"
  }

  count = "${local.lambda_py_8_count}"
}

resource "aws_lambda_function" "lambda_js_8" {
  filename         = "${local.lambda_js_8_zip}"
  function_name    = "${local.lambda_js_8_name}"
  handler          = "${local.lambda_js_8_handler}"
  role             = "${local.lambda_8_role_arn != "" ? local.lambda_8_role_arn  : aws_iam_role.lambda_8.arn}"
  source_code_hash = "${data.archive_file.lambda_js_8.output_base64sha256}"
  runtime          = "${local.lambda_js_8_runtime}"
  timeout          = "${local.lambda_8_timeout}"

  environment {
    variables = "${local.lambda_8_env}"
  }

  count = "${local.lambda_js_8_count}"
}

resource "aws_lambda_permission" "cloudwatch_8" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_8_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.8.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_8",
    "aws_lambda_function.lambda_py_8",
    "aws_lambda_function.lambda_js_8",
  ]

  count = "${local.cloudwatch_8_count}"
}

resource "aws_lambda_permission" "api_gateway_8_n_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_8_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.8_n_auth.http_method}${aws_api_gateway_resource.8.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_8",
    "aws_lambda_function.lambda_py_8",
    "aws_lambda_function.lambda_js_8",
  ]

  count = "${local.api_gateway_8_count + local.api_gateway_8_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_8_w_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_8_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.8_w_auth.http_method}${aws_api_gateway_resource.8.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_8",
    "aws_lambda_function.lambda_py_8",
    "aws_lambda_function.lambda_js_8",
  ]

  count = "${local.api_gateway_8_count + local.api_gateway_8_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_9" {
  filename         = "${local.lambda_go_9_zip}"
  function_name    = "${local.lambda_go_9_name}"
  handler          = "${local.lambda_go_9_handler}"
  role             = "${local.lambda_9_role_arn != "" ? local.lambda_9_role_arn  : aws_iam_role.lambda_9.arn}"
  source_code_hash = "${data.archive_file.lambda_go_9.output_base64sha256}"
  runtime          = "${local.lambda_go_9_runtime}"
  timeout          = "${local.lambda_9_timeout}"

  environment {
    variables = "${local.lambda_9_env}"
  }

  count = "${local.lambda_go_9_count}"
}

resource "aws_lambda_function" "lambda_py_9" {
  filename         = "${local.lambda_py_9_zip}"
  function_name    = "${local.lambda_py_9_name}"
  handler          = "${local.lambda_py_9_handler}"
  role             = "${local.lambda_9_role_arn != "" ? local.lambda_9_role_arn  : aws_iam_role.lambda_9.arn}"
  source_code_hash = "${data.archive_file.lambda_py_9.output_base64sha256}"
  runtime          = "${local.lambda_py_9_runtime}"
  timeout          = "${local.lambda_9_timeout}"

  environment {
    variables = "${local.lambda_9_env}"
  }

  count = "${local.lambda_py_9_count}"
}

resource "aws_lambda_function" "lambda_js_9" {
  filename         = "${local.lambda_js_9_zip}"
  function_name    = "${local.lambda_js_9_name}"
  handler          = "${local.lambda_js_9_handler}"
  role             = "${local.lambda_9_role_arn != "" ? local.lambda_9_role_arn  : aws_iam_role.lambda_9.arn}"
  source_code_hash = "${data.archive_file.lambda_js_9.output_base64sha256}"
  runtime          = "${local.lambda_js_9_runtime}"
  timeout          = "${local.lambda_9_timeout}"

  environment {
    variables = "${local.lambda_9_env}"
  }

  count = "${local.lambda_js_9_count}"
}

resource "aws_lambda_permission" "cloudwatch_9" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_9_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.9.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_9",
    "aws_lambda_function.lambda_py_9",
    "aws_lambda_function.lambda_js_9",
  ]

  count = "${local.cloudwatch_9_count}"
}

resource "aws_lambda_permission" "api_gateway_9_n_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_9_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.9_n_auth.http_method}${aws_api_gateway_resource.9.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_9",
    "aws_lambda_function.lambda_py_9",
    "aws_lambda_function.lambda_js_9",
  ]

  count = "${local.api_gateway_9_count + local.api_gateway_9_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_9_w_auth" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_9_name_computed}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.9_w_auth.http_method}${aws_api_gateway_resource.9.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_9",
    "aws_lambda_function.lambda_py_9",
    "aws_lambda_function.lambda_js_9",
  ]

  count = "${local.api_gateway_9_count + local.api_gateway_9_authorizer_count == 2 ? 1 : 0}"
}
