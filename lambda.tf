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
