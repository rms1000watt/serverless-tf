resource "aws_lambda_function" "lambda_go_0" {
  filename         = "${local.lambda_go_0_zip}"
  function_name    = "${local.lambda_go_0_name}"
  handler          = "${local.lambda_go_0_handler}"
  role             = "${aws_iam_role.lambda_0.arn}"
  source_code_hash = "${data.archive_file.lambda_go_0.output_base64sha256}"
  runtime          = "${local.lambda_go_0_runtime}"
  timeout          = "${local.lambda_0_timeout}"

  // environment {
  //   variables = "${local.lambda_0_env_vars}"
  // }

  count = "${local.lambda_go_0_count}"
}

// resource "aws_lambda_function" "lambda_py" {
//   filename         = "${local.lambda_py_zip}"
//   function_name    = "${local.lambda_py_name}"
//   handler          = "${local.lambda_py_handler}"
//   role             = "${aws_iam_role.lambda_py.arn}"
//   source_code_hash = "${data.archive_file.lambda_py.output_base64sha256}"
//   runtime          = "${local.lambda_py_runtime}"
//   timeout          = "${var.timeout}"


//   environment {
//     variables = "${var.env_vars}"
//   }


//   count = "${local.lambda_py_count}"
// }


// resource "aws_lambda_function" "lambda_js" {
//   filename         = "${local.lambda_js_zip}"
//   function_name    = "${local.lambda_js_name}"
//   handler          = "${local.lambda_js_handler}"
//   role             = "${aws_iam_role.lambda_js.arn}"
//   source_code_hash = "${data.archive_file.lambda_js.output_base64sha256}"
//   runtime          = "${local.lambda_js_runtime}"
//   timeout          = "${var.timeout}"


//   environment {
//     variables = "${var.env_vars}"
//   }


//   count = "${local.lambda_js_count}"
// }

