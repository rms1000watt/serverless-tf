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

  provider = "aws.0"
  count    = "${local.lambda_go_0_count}"
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

  provider = "aws.0"
  count    = "${local.lambda_py_0_count}"
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

  provider = "aws.0"
  count    = "${local.lambda_js_0_count}"
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

  provider = "aws.0"
  count    = "${local.cloudwatch_0_count}"
}

resource "aws_lambda_permission" "cloudwatch_event_0" {
  statement_id  = "AllowExecutionFromCloudWatchEvent"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_0_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.cloudwatch_event_0.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_0",
    "aws_lambda_function.lambda_py_0",
    "aws_lambda_function.lambda_js_0",
  ]

  provider = "aws.0"
  count    = "${local.cloudwatch_event_0_count}"
}

resource "aws_lambda_permission" "s3_0" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_0_name_computed}"
  principal     = "s3.amazonaws.com"
  source_arn    = "${local.s3_0_bucket_arn}"

  provider = "aws.0"
  count    = "${local.s3_0_count}"
}

resource "aws_lambda_permission" "api_gateway_0_n_auth_regional" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_0_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_0_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.0_regional.id}/*/${aws_api_gateway_method.0_n_auth_regional.http_method}${aws_api_gateway_resource.0_regional.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_0",
    "aws_lambda_function.lambda_py_0",
    "aws_lambda_function.lambda_js_0",
  ]

  provider = "aws.0"
  count    = "${(local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 1) && (local.api_gateway_0_regional_count == 1) ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_0_w_auth_regional" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_0_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_0_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.0_regional.id}/*/${aws_api_gateway_method.0_w_auth_regional.http_method}${aws_api_gateway_resource.0_regional.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_0",
    "aws_lambda_function.lambda_py_0",
    "aws_lambda_function.lambda_js_0",
  ]

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count + local.api_gateway_0_regional_count == 3 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_0_n_auth_global" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_0_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_0_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.0_n_auth_global.http_method}${aws_api_gateway_resource.0_global.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_0",
    "aws_lambda_function.lambda_py_0",
    "aws_lambda_function.lambda_js_0",
  ]

  provider = "aws.0"
  count    = "${(local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 1) && (local.api_gateway_0_global_count == 1) ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_0_w_auth_global" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_0_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_0_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.0_w_auth_global.http_method}${aws_api_gateway_resource.0_global.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_0",
    "aws_lambda_function.lambda_py_0",
    "aws_lambda_function.lambda_js_0",
  ]

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count + local.api_gateway_0_global_count == 3 ? 1 : 0}"
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

  provider = "aws.1"
  count    = "${local.lambda_go_1_count}"
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

  provider = "aws.1"
  count    = "${local.lambda_py_1_count}"
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

  provider = "aws.1"
  count    = "${local.lambda_js_1_count}"
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

  provider = "aws.1"
  count    = "${local.cloudwatch_1_count}"
}

resource "aws_lambda_permission" "cloudwatch_event_1" {
  statement_id  = "AllowExecutionFromCloudWatchEvent"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_1_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.cloudwatch_event_1.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_1",
    "aws_lambda_function.lambda_py_1",
    "aws_lambda_function.lambda_js_1",
  ]

  provider = "aws.1"
  count    = "${local.cloudwatch_event_1_count}"
}

resource "aws_lambda_permission" "s3_1" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_1_name_computed}"
  principal     = "s3.amazonaws.com"
  source_arn    = "${local.s3_1_bucket_arn}"

  provider = "aws.1"
  count    = "${local.s3_1_count}"
}

resource "aws_lambda_permission" "api_gateway_1_n_auth_regional" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_1_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_1_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.1_regional.id}/*/${aws_api_gateway_method.1_n_auth_regional.http_method}${aws_api_gateway_resource.1_regional.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_1",
    "aws_lambda_function.lambda_py_1",
    "aws_lambda_function.lambda_js_1",
  ]

  provider = "aws.1"
  count    = "${(local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 1) && (local.api_gateway_1_regional_count == 1) ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_1_w_auth_regional" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_1_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_1_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.1_regional.id}/*/${aws_api_gateway_method.1_w_auth_regional.http_method}${aws_api_gateway_resource.1_regional.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_1",
    "aws_lambda_function.lambda_py_1",
    "aws_lambda_function.lambda_js_1",
  ]

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count + local.api_gateway_1_regional_count == 3 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_1_n_auth_global" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_1_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_1_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.1_n_auth_global.http_method}${aws_api_gateway_resource.1_global.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_1",
    "aws_lambda_function.lambda_py_1",
    "aws_lambda_function.lambda_js_1",
  ]

  provider = "aws.1"
  count    = "${(local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 1) && (local.api_gateway_1_global_count == 1) ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_1_w_auth_global" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_1_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_1_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.1_w_auth_global.http_method}${aws_api_gateway_resource.1_global.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_1",
    "aws_lambda_function.lambda_py_1",
    "aws_lambda_function.lambda_js_1",
  ]

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count + local.api_gateway_1_global_count == 3 ? 1 : 0}"
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

  provider = "aws.2"
  count    = "${local.lambda_go_2_count}"
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

  provider = "aws.2"
  count    = "${local.lambda_py_2_count}"
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

  provider = "aws.2"
  count    = "${local.lambda_js_2_count}"
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

  provider = "aws.2"
  count    = "${local.cloudwatch_2_count}"
}

resource "aws_lambda_permission" "cloudwatch_event_2" {
  statement_id  = "AllowExecutionFromCloudWatchEvent"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_2_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.cloudwatch_event_2.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_2",
    "aws_lambda_function.lambda_py_2",
    "aws_lambda_function.lambda_js_2",
  ]

  provider = "aws.2"
  count    = "${local.cloudwatch_event_2_count}"
}

resource "aws_lambda_permission" "s3_2" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_2_name_computed}"
  principal     = "s3.amazonaws.com"
  source_arn    = "${local.s3_2_bucket_arn}"

  provider = "aws.2"
  count    = "${local.s3_2_count}"
}

resource "aws_lambda_permission" "api_gateway_2_n_auth_regional" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_2_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_2_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.2_regional.id}/*/${aws_api_gateway_method.2_n_auth_regional.http_method}${aws_api_gateway_resource.2_regional.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_2",
    "aws_lambda_function.lambda_py_2",
    "aws_lambda_function.lambda_js_2",
  ]

  provider = "aws.2"
  count    = "${(local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 1) && (local.api_gateway_2_regional_count == 1) ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_2_w_auth_regional" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_2_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_2_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.2_regional.id}/*/${aws_api_gateway_method.2_w_auth_regional.http_method}${aws_api_gateway_resource.2_regional.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_2",
    "aws_lambda_function.lambda_py_2",
    "aws_lambda_function.lambda_js_2",
  ]

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count + local.api_gateway_2_regional_count == 3 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_2_n_auth_global" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_2_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_2_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.2_n_auth_global.http_method}${aws_api_gateway_resource.2_global.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_2",
    "aws_lambda_function.lambda_py_2",
    "aws_lambda_function.lambda_js_2",
  ]

  provider = "aws.2"
  count    = "${(local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 1) && (local.api_gateway_2_global_count == 1) ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_2_w_auth_global" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_2_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_2_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.2_w_auth_global.http_method}${aws_api_gateway_resource.2_global.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_2",
    "aws_lambda_function.lambda_py_2",
    "aws_lambda_function.lambda_js_2",
  ]

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count + local.api_gateway_2_global_count == 3 ? 1 : 0}"
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

  provider = "aws.3"
  count    = "${local.lambda_go_3_count}"
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

  provider = "aws.3"
  count    = "${local.lambda_py_3_count}"
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

  provider = "aws.3"
  count    = "${local.lambda_js_3_count}"
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

  provider = "aws.3"
  count    = "${local.cloudwatch_3_count}"
}

resource "aws_lambda_permission" "cloudwatch_event_3" {
  statement_id  = "AllowExecutionFromCloudWatchEvent"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_3_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.cloudwatch_event_3.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_3",
    "aws_lambda_function.lambda_py_3",
    "aws_lambda_function.lambda_js_3",
  ]

  provider = "aws.3"
  count    = "${local.cloudwatch_event_3_count}"
}

resource "aws_lambda_permission" "s3_3" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_3_name_computed}"
  principal     = "s3.amazonaws.com"
  source_arn    = "${local.s3_3_bucket_arn}"

  provider = "aws.3"
  count    = "${local.s3_3_count}"
}

resource "aws_lambda_permission" "api_gateway_3_n_auth_regional" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_3_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_3_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.3_regional.id}/*/${aws_api_gateway_method.3_n_auth_regional.http_method}${aws_api_gateway_resource.3_regional.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_3",
    "aws_lambda_function.lambda_py_3",
    "aws_lambda_function.lambda_js_3",
  ]

  provider = "aws.3"
  count    = "${(local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 1) && (local.api_gateway_3_regional_count == 1) ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_3_w_auth_regional" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_3_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_3_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.3_regional.id}/*/${aws_api_gateway_method.3_w_auth_regional.http_method}${aws_api_gateway_resource.3_regional.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_3",
    "aws_lambda_function.lambda_py_3",
    "aws_lambda_function.lambda_js_3",
  ]

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count + local.api_gateway_3_regional_count == 3 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_3_n_auth_global" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_3_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_3_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.3_n_auth_global.http_method}${aws_api_gateway_resource.3_global.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_3",
    "aws_lambda_function.lambda_py_3",
    "aws_lambda_function.lambda_js_3",
  ]

  provider = "aws.3"
  count    = "${(local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 1) && (local.api_gateway_3_global_count == 1) ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_3_w_auth_global" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_3_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_3_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.3_w_auth_global.http_method}${aws_api_gateway_resource.3_global.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_3",
    "aws_lambda_function.lambda_py_3",
    "aws_lambda_function.lambda_js_3",
  ]

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count + local.api_gateway_3_global_count == 3 ? 1 : 0}"
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

  provider = "aws.4"
  count    = "${local.lambda_go_4_count}"
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

  provider = "aws.4"
  count    = "${local.lambda_py_4_count}"
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

  provider = "aws.4"
  count    = "${local.lambda_js_4_count}"
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

  provider = "aws.4"
  count    = "${local.cloudwatch_4_count}"
}

resource "aws_lambda_permission" "cloudwatch_event_4" {
  statement_id  = "AllowExecutionFromCloudWatchEvent"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_4_name_computed}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.cloudwatch_event_4.arn}"

  depends_on = [
    "aws_lambda_function.lambda_go_4",
    "aws_lambda_function.lambda_py_4",
    "aws_lambda_function.lambda_js_4",
  ]

  provider = "aws.4"
  count    = "${local.cloudwatch_event_4_count}"
}

resource "aws_lambda_permission" "s3_4" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = "${local.lambda_4_name_computed}"
  principal     = "s3.amazonaws.com"
  source_arn    = "${local.s3_4_bucket_arn}"

  provider = "aws.4"
  count    = "${local.s3_4_count}"
}

resource "aws_lambda_permission" "api_gateway_4_n_auth_regional" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_4_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_4_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.4_regional.id}/*/${aws_api_gateway_method.4_n_auth_regional.http_method}${aws_api_gateway_resource.4_regional.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_4",
    "aws_lambda_function.lambda_py_4",
    "aws_lambda_function.lambda_js_4",
  ]

  provider = "aws.4"
  count    = "${(local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 1) && (local.api_gateway_4_regional_count == 1) ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_4_w_auth_regional" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_4_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_4_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.4_regional.id}/*/${aws_api_gateway_method.4_w_auth_regional.http_method}${aws_api_gateway_resource.4_regional.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_4",
    "aws_lambda_function.lambda_py_4",
    "aws_lambda_function.lambda_js_4",
  ]

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count + local.api_gateway_4_regional_count == 3 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_4_n_auth_global" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_4_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_4_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.4_n_auth_global.http_method}${aws_api_gateway_resource.4_global.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_4",
    "aws_lambda_function.lambda_py_4",
    "aws_lambda_function.lambda_js_4",
  ]

  provider = "aws.4"
  count    = "${(local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 1) && (local.api_gateway_4_global_count == 1) ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_4_w_auth_global" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${local.lambda_4_name_computed}"
  source_arn    = "arn:aws:execute-api:${local.lambda_4_region}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.4_w_auth_global.http_method}${aws_api_gateway_resource.4_global.path}"

  depends_on = [
    "aws_lambda_function.lambda_go_4",
    "aws_lambda_function.lambda_py_4",
    "aws_lambda_function.lambda_js_4",
  ]

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count + local.api_gateway_4_global_count == 3 ? 1 : 0}"
}
