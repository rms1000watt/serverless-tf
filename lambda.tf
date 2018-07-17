// GENERATED FILE: DO NOT EDIT

resource "aws_lambda_function" "lambda_go_0" {
  filename         = "${local.lambda_go_0_zip}"
  function_name    = "${local.lambda_go_0_name}"
  handler          = "${local.lambda_go_0_handler}"
  role             = "${aws_iam_role.lambda_0.arn}"
  source_code_hash = "${data.archive_file.lambda_go_0.output_base64sha256}"
  runtime          = "${local.lambda_go_0_runtime}"
  timeout          = "${local.lambda_0_timeout}"

  count = "${local.lambda_go_0_count}"
}

resource "aws_lambda_function" "lambda_py_0" {
  filename         = "${local.lambda_py_0_zip}"
  function_name    = "${local.lambda_py_0_name}"
  handler          = "${local.lambda_py_0_handler}"
  role             = "${aws_iam_role.lambda_0.arn}"
  source_code_hash = "${data.archive_file.lambda_py_0.output_base64sha256}"
  runtime          = "${local.lambda_py_0_runtime}"
  timeout          = "${local.lambda_0_timeout}"

  count = "${local.lambda_py_0_count}"
}

resource "aws_lambda_function" "lambda_js_0" {
  filename         = "${local.lambda_js_0_zip}"
  function_name    = "${local.lambda_js_0_name}"
  handler          = "${local.lambda_js_0_handler}"
  role             = "${aws_iam_role.lambda_0.arn}"
  source_code_hash = "${data.archive_file.lambda_js_0.output_base64sha256}"
  runtime          = "${local.lambda_js_0_runtime}"
  timeout          = "${local.lambda_0_timeout}"

  count = "${local.lambda_js_0_count}"
}

resource "aws_lambda_permission" "cloudwatch_go_0" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_go_0.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.0.arn}"

  count = "${local.lambda_go_0_count + local.cloudwatch_0_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_py_0" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_py_0.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.0.arn}"

  count = "${local.lambda_py_0_count + local.cloudwatch_0_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_js_0" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_js_0.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.0.arn}"

  count = "${local.lambda_js_0_count + local.cloudwatch_0_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_go_0" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_0.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.0.http_method}${aws_api_gateway_resource.0.path}"

  count = "${local.lambda_go_0_count + local.api_gateway_0_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_py_0" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_0.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.0.http_method}${aws_api_gateway_resource.0.path}"

  count = "${local.lambda_py_0_count + local.api_gateway_0_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_js_0" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_0.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.0.http_method}${aws_api_gateway_resource.0.path}"

  count = "${local.lambda_js_0_count + local.api_gateway_0_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_1" {
  filename         = "${local.lambda_go_1_zip}"
  function_name    = "${local.lambda_go_1_name}"
  handler          = "${local.lambda_go_1_handler}"
  role             = "${aws_iam_role.lambda_1.arn}"
  source_code_hash = "${data.archive_file.lambda_go_1.output_base64sha256}"
  runtime          = "${local.lambda_go_1_runtime}"
  timeout          = "${local.lambda_1_timeout}"

  count = "${local.lambda_go_1_count}"
}

resource "aws_lambda_function" "lambda_py_1" {
  filename         = "${local.lambda_py_1_zip}"
  function_name    = "${local.lambda_py_1_name}"
  handler          = "${local.lambda_py_1_handler}"
  role             = "${aws_iam_role.lambda_1.arn}"
  source_code_hash = "${data.archive_file.lambda_py_1.output_base64sha256}"
  runtime          = "${local.lambda_py_1_runtime}"
  timeout          = "${local.lambda_1_timeout}"

  count = "${local.lambda_py_1_count}"
}

resource "aws_lambda_function" "lambda_js_1" {
  filename         = "${local.lambda_js_1_zip}"
  function_name    = "${local.lambda_js_1_name}"
  handler          = "${local.lambda_js_1_handler}"
  role             = "${aws_iam_role.lambda_1.arn}"
  source_code_hash = "${data.archive_file.lambda_js_1.output_base64sha256}"
  runtime          = "${local.lambda_js_1_runtime}"
  timeout          = "${local.lambda_1_timeout}"

  count = "${local.lambda_js_1_count}"
}

resource "aws_lambda_permission" "cloudwatch_go_1" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_go_1.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.1.arn}"

  count = "${local.lambda_go_1_count + local.cloudwatch_1_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_py_1" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_py_1.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.1.arn}"

  count = "${local.lambda_py_1_count + local.cloudwatch_1_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_js_1" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_js_1.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.1.arn}"

  count = "${local.lambda_js_1_count + local.cloudwatch_1_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_go_1" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_1.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.1.http_method}${aws_api_gateway_resource.1.path}"

  count = "${local.lambda_go_1_count + local.api_gateway_1_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_py_1" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_1.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.1.http_method}${aws_api_gateway_resource.1.path}"

  count = "${local.lambda_py_1_count + local.api_gateway_1_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_js_1" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_1.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.1.http_method}${aws_api_gateway_resource.1.path}"

  count = "${local.lambda_js_1_count + local.api_gateway_1_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_2" {
  filename         = "${local.lambda_go_2_zip}"
  function_name    = "${local.lambda_go_2_name}"
  handler          = "${local.lambda_go_2_handler}"
  role             = "${aws_iam_role.lambda_2.arn}"
  source_code_hash = "${data.archive_file.lambda_go_2.output_base64sha256}"
  runtime          = "${local.lambda_go_2_runtime}"
  timeout          = "${local.lambda_2_timeout}"

  count = "${local.lambda_go_2_count}"
}

resource "aws_lambda_function" "lambda_py_2" {
  filename         = "${local.lambda_py_2_zip}"
  function_name    = "${local.lambda_py_2_name}"
  handler          = "${local.lambda_py_2_handler}"
  role             = "${aws_iam_role.lambda_2.arn}"
  source_code_hash = "${data.archive_file.lambda_py_2.output_base64sha256}"
  runtime          = "${local.lambda_py_2_runtime}"
  timeout          = "${local.lambda_2_timeout}"

  count = "${local.lambda_py_2_count}"
}

resource "aws_lambda_function" "lambda_js_2" {
  filename         = "${local.lambda_js_2_zip}"
  function_name    = "${local.lambda_js_2_name}"
  handler          = "${local.lambda_js_2_handler}"
  role             = "${aws_iam_role.lambda_2.arn}"
  source_code_hash = "${data.archive_file.lambda_js_2.output_base64sha256}"
  runtime          = "${local.lambda_js_2_runtime}"
  timeout          = "${local.lambda_2_timeout}"

  count = "${local.lambda_js_2_count}"
}

resource "aws_lambda_permission" "cloudwatch_go_2" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_go_2.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.2.arn}"

  count = "${local.lambda_go_2_count + local.cloudwatch_2_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_py_2" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_py_2.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.2.arn}"

  count = "${local.lambda_py_2_count + local.cloudwatch_2_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_js_2" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_js_2.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.2.arn}"

  count = "${local.lambda_js_2_count + local.cloudwatch_2_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_go_2" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_2.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.2.http_method}${aws_api_gateway_resource.2.path}"

  count = "${local.lambda_go_2_count + local.api_gateway_2_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_py_2" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_2.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.2.http_method}${aws_api_gateway_resource.2.path}"

  count = "${local.lambda_py_2_count + local.api_gateway_2_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_js_2" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_2.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.2.http_method}${aws_api_gateway_resource.2.path}"

  count = "${local.lambda_js_2_count + local.api_gateway_2_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_3" {
  filename         = "${local.lambda_go_3_zip}"
  function_name    = "${local.lambda_go_3_name}"
  handler          = "${local.lambda_go_3_handler}"
  role             = "${aws_iam_role.lambda_3.arn}"
  source_code_hash = "${data.archive_file.lambda_go_3.output_base64sha256}"
  runtime          = "${local.lambda_go_3_runtime}"
  timeout          = "${local.lambda_3_timeout}"

  count = "${local.lambda_go_3_count}"
}

resource "aws_lambda_function" "lambda_py_3" {
  filename         = "${local.lambda_py_3_zip}"
  function_name    = "${local.lambda_py_3_name}"
  handler          = "${local.lambda_py_3_handler}"
  role             = "${aws_iam_role.lambda_3.arn}"
  source_code_hash = "${data.archive_file.lambda_py_3.output_base64sha256}"
  runtime          = "${local.lambda_py_3_runtime}"
  timeout          = "${local.lambda_3_timeout}"

  count = "${local.lambda_py_3_count}"
}

resource "aws_lambda_function" "lambda_js_3" {
  filename         = "${local.lambda_js_3_zip}"
  function_name    = "${local.lambda_js_3_name}"
  handler          = "${local.lambda_js_3_handler}"
  role             = "${aws_iam_role.lambda_3.arn}"
  source_code_hash = "${data.archive_file.lambda_js_3.output_base64sha256}"
  runtime          = "${local.lambda_js_3_runtime}"
  timeout          = "${local.lambda_3_timeout}"

  count = "${local.lambda_js_3_count}"
}

resource "aws_lambda_permission" "cloudwatch_go_3" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_go_3.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.3.arn}"

  count = "${local.lambda_go_3_count + local.cloudwatch_3_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_py_3" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_py_3.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.3.arn}"

  count = "${local.lambda_py_3_count + local.cloudwatch_3_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_js_3" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_js_3.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.3.arn}"

  count = "${local.lambda_js_3_count + local.cloudwatch_3_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_go_3" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_3.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.3.http_method}${aws_api_gateway_resource.3.path}"

  count = "${local.lambda_go_3_count + local.api_gateway_3_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_py_3" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_3.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.3.http_method}${aws_api_gateway_resource.3.path}"

  count = "${local.lambda_py_3_count + local.api_gateway_3_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_js_3" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_3.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.3.http_method}${aws_api_gateway_resource.3.path}"

  count = "${local.lambda_js_3_count + local.api_gateway_3_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_4" {
  filename         = "${local.lambda_go_4_zip}"
  function_name    = "${local.lambda_go_4_name}"
  handler          = "${local.lambda_go_4_handler}"
  role             = "${aws_iam_role.lambda_4.arn}"
  source_code_hash = "${data.archive_file.lambda_go_4.output_base64sha256}"
  runtime          = "${local.lambda_go_4_runtime}"
  timeout          = "${local.lambda_4_timeout}"

  count = "${local.lambda_go_4_count}"
}

resource "aws_lambda_function" "lambda_py_4" {
  filename         = "${local.lambda_py_4_zip}"
  function_name    = "${local.lambda_py_4_name}"
  handler          = "${local.lambda_py_4_handler}"
  role             = "${aws_iam_role.lambda_4.arn}"
  source_code_hash = "${data.archive_file.lambda_py_4.output_base64sha256}"
  runtime          = "${local.lambda_py_4_runtime}"
  timeout          = "${local.lambda_4_timeout}"

  count = "${local.lambda_py_4_count}"
}

resource "aws_lambda_function" "lambda_js_4" {
  filename         = "${local.lambda_js_4_zip}"
  function_name    = "${local.lambda_js_4_name}"
  handler          = "${local.lambda_js_4_handler}"
  role             = "${aws_iam_role.lambda_4.arn}"
  source_code_hash = "${data.archive_file.lambda_js_4.output_base64sha256}"
  runtime          = "${local.lambda_js_4_runtime}"
  timeout          = "${local.lambda_4_timeout}"

  count = "${local.lambda_js_4_count}"
}

resource "aws_lambda_permission" "cloudwatch_go_4" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_go_4.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.4.arn}"

  count = "${local.lambda_go_4_count + local.cloudwatch_4_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_py_4" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_py_4.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.4.arn}"

  count = "${local.lambda_py_4_count + local.cloudwatch_4_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_js_4" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_js_4.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.4.arn}"

  count = "${local.lambda_js_4_count + local.cloudwatch_4_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_go_4" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_4.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.4.http_method}${aws_api_gateway_resource.4.path}"

  count = "${local.lambda_go_4_count + local.api_gateway_4_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_py_4" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_4.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.4.http_method}${aws_api_gateway_resource.4.path}"

  count = "${local.lambda_py_4_count + local.api_gateway_4_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_js_4" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_4.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.4.http_method}${aws_api_gateway_resource.4.path}"

  count = "${local.lambda_js_4_count + local.api_gateway_4_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_5" {
  filename         = "${local.lambda_go_5_zip}"
  function_name    = "${local.lambda_go_5_name}"
  handler          = "${local.lambda_go_5_handler}"
  role             = "${aws_iam_role.lambda_5.arn}"
  source_code_hash = "${data.archive_file.lambda_go_5.output_base64sha256}"
  runtime          = "${local.lambda_go_5_runtime}"
  timeout          = "${local.lambda_5_timeout}"

  count = "${local.lambda_go_5_count}"
}

resource "aws_lambda_function" "lambda_py_5" {
  filename         = "${local.lambda_py_5_zip}"
  function_name    = "${local.lambda_py_5_name}"
  handler          = "${local.lambda_py_5_handler}"
  role             = "${aws_iam_role.lambda_5.arn}"
  source_code_hash = "${data.archive_file.lambda_py_5.output_base64sha256}"
  runtime          = "${local.lambda_py_5_runtime}"
  timeout          = "${local.lambda_5_timeout}"

  count = "${local.lambda_py_5_count}"
}

resource "aws_lambda_function" "lambda_js_5" {
  filename         = "${local.lambda_js_5_zip}"
  function_name    = "${local.lambda_js_5_name}"
  handler          = "${local.lambda_js_5_handler}"
  role             = "${aws_iam_role.lambda_5.arn}"
  source_code_hash = "${data.archive_file.lambda_js_5.output_base64sha256}"
  runtime          = "${local.lambda_js_5_runtime}"
  timeout          = "${local.lambda_5_timeout}"

  count = "${local.lambda_js_5_count}"
}

resource "aws_lambda_permission" "cloudwatch_go_5" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_go_5.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.5.arn}"

  count = "${local.lambda_go_5_count + local.cloudwatch_5_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_py_5" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_py_5.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.5.arn}"

  count = "${local.lambda_py_5_count + local.cloudwatch_5_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_js_5" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_js_5.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.5.arn}"

  count = "${local.lambda_js_5_count + local.cloudwatch_5_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_go_5" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_5.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.5.http_method}${aws_api_gateway_resource.5.path}"

  count = "${local.lambda_go_5_count + local.api_gateway_5_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_py_5" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_5.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.5.http_method}${aws_api_gateway_resource.5.path}"

  count = "${local.lambda_py_5_count + local.api_gateway_5_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_js_5" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_5.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.5.http_method}${aws_api_gateway_resource.5.path}"

  count = "${local.lambda_js_5_count + local.api_gateway_5_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_6" {
  filename         = "${local.lambda_go_6_zip}"
  function_name    = "${local.lambda_go_6_name}"
  handler          = "${local.lambda_go_6_handler}"
  role             = "${aws_iam_role.lambda_6.arn}"
  source_code_hash = "${data.archive_file.lambda_go_6.output_base64sha256}"
  runtime          = "${local.lambda_go_6_runtime}"
  timeout          = "${local.lambda_6_timeout}"

  count = "${local.lambda_go_6_count}"
}

resource "aws_lambda_function" "lambda_py_6" {
  filename         = "${local.lambda_py_6_zip}"
  function_name    = "${local.lambda_py_6_name}"
  handler          = "${local.lambda_py_6_handler}"
  role             = "${aws_iam_role.lambda_6.arn}"
  source_code_hash = "${data.archive_file.lambda_py_6.output_base64sha256}"
  runtime          = "${local.lambda_py_6_runtime}"
  timeout          = "${local.lambda_6_timeout}"

  count = "${local.lambda_py_6_count}"
}

resource "aws_lambda_function" "lambda_js_6" {
  filename         = "${local.lambda_js_6_zip}"
  function_name    = "${local.lambda_js_6_name}"
  handler          = "${local.lambda_js_6_handler}"
  role             = "${aws_iam_role.lambda_6.arn}"
  source_code_hash = "${data.archive_file.lambda_js_6.output_base64sha256}"
  runtime          = "${local.lambda_js_6_runtime}"
  timeout          = "${local.lambda_6_timeout}"

  count = "${local.lambda_js_6_count}"
}

resource "aws_lambda_permission" "cloudwatch_go_6" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_go_6.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.6.arn}"

  count = "${local.lambda_go_6_count + local.cloudwatch_6_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_py_6" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_py_6.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.6.arn}"

  count = "${local.lambda_py_6_count + local.cloudwatch_6_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_js_6" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_js_6.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.6.arn}"

  count = "${local.lambda_js_6_count + local.cloudwatch_6_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_go_6" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_6.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.6.http_method}${aws_api_gateway_resource.6.path}"

  count = "${local.lambda_go_6_count + local.api_gateway_6_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_py_6" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_6.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.6.http_method}${aws_api_gateway_resource.6.path}"

  count = "${local.lambda_py_6_count + local.api_gateway_6_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_js_6" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_6.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.6.http_method}${aws_api_gateway_resource.6.path}"

  count = "${local.lambda_js_6_count + local.api_gateway_6_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_7" {
  filename         = "${local.lambda_go_7_zip}"
  function_name    = "${local.lambda_go_7_name}"
  handler          = "${local.lambda_go_7_handler}"
  role             = "${aws_iam_role.lambda_7.arn}"
  source_code_hash = "${data.archive_file.lambda_go_7.output_base64sha256}"
  runtime          = "${local.lambda_go_7_runtime}"
  timeout          = "${local.lambda_7_timeout}"

  count = "${local.lambda_go_7_count}"
}

resource "aws_lambda_function" "lambda_py_7" {
  filename         = "${local.lambda_py_7_zip}"
  function_name    = "${local.lambda_py_7_name}"
  handler          = "${local.lambda_py_7_handler}"
  role             = "${aws_iam_role.lambda_7.arn}"
  source_code_hash = "${data.archive_file.lambda_py_7.output_base64sha256}"
  runtime          = "${local.lambda_py_7_runtime}"
  timeout          = "${local.lambda_7_timeout}"

  count = "${local.lambda_py_7_count}"
}

resource "aws_lambda_function" "lambda_js_7" {
  filename         = "${local.lambda_js_7_zip}"
  function_name    = "${local.lambda_js_7_name}"
  handler          = "${local.lambda_js_7_handler}"
  role             = "${aws_iam_role.lambda_7.arn}"
  source_code_hash = "${data.archive_file.lambda_js_7.output_base64sha256}"
  runtime          = "${local.lambda_js_7_runtime}"
  timeout          = "${local.lambda_7_timeout}"

  count = "${local.lambda_js_7_count}"
}

resource "aws_lambda_permission" "cloudwatch_go_7" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_go_7.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.7.arn}"

  count = "${local.lambda_go_7_count + local.cloudwatch_7_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_py_7" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_py_7.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.7.arn}"

  count = "${local.lambda_py_7_count + local.cloudwatch_7_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_js_7" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_js_7.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.7.arn}"

  count = "${local.lambda_js_7_count + local.cloudwatch_7_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_go_7" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_7.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.7.http_method}${aws_api_gateway_resource.7.path}"

  count = "${local.lambda_go_7_count + local.api_gateway_7_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_py_7" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_7.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.7.http_method}${aws_api_gateway_resource.7.path}"

  count = "${local.lambda_py_7_count + local.api_gateway_7_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_js_7" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_7.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.7.http_method}${aws_api_gateway_resource.7.path}"

  count = "${local.lambda_js_7_count + local.api_gateway_7_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_8" {
  filename         = "${local.lambda_go_8_zip}"
  function_name    = "${local.lambda_go_8_name}"
  handler          = "${local.lambda_go_8_handler}"
  role             = "${aws_iam_role.lambda_8.arn}"
  source_code_hash = "${data.archive_file.lambda_go_8.output_base64sha256}"
  runtime          = "${local.lambda_go_8_runtime}"
  timeout          = "${local.lambda_8_timeout}"

  count = "${local.lambda_go_8_count}"
}

resource "aws_lambda_function" "lambda_py_8" {
  filename         = "${local.lambda_py_8_zip}"
  function_name    = "${local.lambda_py_8_name}"
  handler          = "${local.lambda_py_8_handler}"
  role             = "${aws_iam_role.lambda_8.arn}"
  source_code_hash = "${data.archive_file.lambda_py_8.output_base64sha256}"
  runtime          = "${local.lambda_py_8_runtime}"
  timeout          = "${local.lambda_8_timeout}"

  count = "${local.lambda_py_8_count}"
}

resource "aws_lambda_function" "lambda_js_8" {
  filename         = "${local.lambda_js_8_zip}"
  function_name    = "${local.lambda_js_8_name}"
  handler          = "${local.lambda_js_8_handler}"
  role             = "${aws_iam_role.lambda_8.arn}"
  source_code_hash = "${data.archive_file.lambda_js_8.output_base64sha256}"
  runtime          = "${local.lambda_js_8_runtime}"
  timeout          = "${local.lambda_8_timeout}"

  count = "${local.lambda_js_8_count}"
}

resource "aws_lambda_permission" "cloudwatch_go_8" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_go_8.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.8.arn}"

  count = "${local.lambda_go_8_count + local.cloudwatch_8_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_py_8" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_py_8.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.8.arn}"

  count = "${local.lambda_py_8_count + local.cloudwatch_8_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_js_8" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_js_8.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.8.arn}"

  count = "${local.lambda_js_8_count + local.cloudwatch_8_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_go_8" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_8.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.8.http_method}${aws_api_gateway_resource.8.path}"

  count = "${local.lambda_go_8_count + local.api_gateway_8_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_py_8" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_8.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.8.http_method}${aws_api_gateway_resource.8.path}"

  count = "${local.lambda_py_8_count + local.api_gateway_8_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_js_8" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_8.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.8.http_method}${aws_api_gateway_resource.8.path}"

  count = "${local.lambda_js_8_count + local.api_gateway_8_count == 2 ? 1 : 0}"
}

resource "aws_lambda_function" "lambda_go_9" {
  filename         = "${local.lambda_go_9_zip}"
  function_name    = "${local.lambda_go_9_name}"
  handler          = "${local.lambda_go_9_handler}"
  role             = "${aws_iam_role.lambda_9.arn}"
  source_code_hash = "${data.archive_file.lambda_go_9.output_base64sha256}"
  runtime          = "${local.lambda_go_9_runtime}"
  timeout          = "${local.lambda_9_timeout}"

  count = "${local.lambda_go_9_count}"
}

resource "aws_lambda_function" "lambda_py_9" {
  filename         = "${local.lambda_py_9_zip}"
  function_name    = "${local.lambda_py_9_name}"
  handler          = "${local.lambda_py_9_handler}"
  role             = "${aws_iam_role.lambda_9.arn}"
  source_code_hash = "${data.archive_file.lambda_py_9.output_base64sha256}"
  runtime          = "${local.lambda_py_9_runtime}"
  timeout          = "${local.lambda_9_timeout}"

  count = "${local.lambda_py_9_count}"
}

resource "aws_lambda_function" "lambda_js_9" {
  filename         = "${local.lambda_js_9_zip}"
  function_name    = "${local.lambda_js_9_name}"
  handler          = "${local.lambda_js_9_handler}"
  role             = "${aws_iam_role.lambda_9.arn}"
  source_code_hash = "${data.archive_file.lambda_js_9.output_base64sha256}"
  runtime          = "${local.lambda_js_9_runtime}"
  timeout          = "${local.lambda_9_timeout}"

  count = "${local.lambda_js_9_count}"
}

resource "aws_lambda_permission" "cloudwatch_go_9" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_go_9.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.9.arn}"

  count = "${local.lambda_go_9_count + local.cloudwatch_9_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_py_9" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_py_9.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.9.arn}"

  count = "${local.lambda_py_9_count + local.cloudwatch_9_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "cloudwatch_js_9" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.lambda_js_9.function_name}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.9.arn}"

  count = "${local.lambda_js_9_count + local.cloudwatch_9_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_go_9" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_go_9.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.9.http_method}${aws_api_gateway_resource.9.path}"

  count = "${local.lambda_go_9_count + local.api_gateway_9_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_py_9" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_py_9.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.9.http_method}${aws_api_gateway_resource.9.path}"

  count = "${local.lambda_py_9_count + local.api_gateway_9_count == 2 ? 1 : 0}"
}

resource "aws_lambda_permission" "api_gateway_js_9" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  principal     = "apigateway.amazonaws.com"
  function_name = "${aws_lambda_function.lambda_js_9.arn}"
  source_arn    = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:${aws_api_gateway_rest_api.global.id}/*/${aws_api_gateway_method.9.http_method}${aws_api_gateway_resource.9.path}"

  count = "${local.lambda_js_9_count + local.api_gateway_9_count == 2 ? 1 : 0}"
}
