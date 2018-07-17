// GENERATED FILE: DO NOT EDIT

resource "aws_cloudwatch_event_rule" "0" {
  name                = "${local.cloudwatch_0_name}"
  schedule_expression = "${local.cloudwatch_0_rate}"

  count = "${local.cloudwatch_0_count}"
}

resource "aws_cloudwatch_event_target" "0_go" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_go_0.arn}"

  count = "${local.lambda_go_0_count + local.cloudwatch_0_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "0_py" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_py_0.arn}"

  count = "${local.lambda_py_0_count + local.cloudwatch_0_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "0_js" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_js_0.arn}"

  count = "${local.lambda_js_0_count + local.cloudwatch_0_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_rule" "1" {
  name                = "${local.cloudwatch_1_name}"
  schedule_expression = "${local.cloudwatch_1_rate}"

  count = "${local.cloudwatch_1_count}"
}

resource "aws_cloudwatch_event_target" "1_go" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_go_1.arn}"

  count = "${local.lambda_go_1_count + local.cloudwatch_1_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "1_py" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_py_1.arn}"

  count = "${local.lambda_py_1_count + local.cloudwatch_1_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "1_js" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_js_1.arn}"

  count = "${local.lambda_js_1_count + local.cloudwatch_1_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_rule" "2" {
  name                = "${local.cloudwatch_2_name}"
  schedule_expression = "${local.cloudwatch_2_rate}"

  count = "${local.cloudwatch_2_count}"
}

resource "aws_cloudwatch_event_target" "2_go" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_go_2.arn}"

  count = "${local.lambda_go_2_count + local.cloudwatch_2_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "2_py" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_py_2.arn}"

  count = "${local.lambda_py_2_count + local.cloudwatch_2_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "2_js" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_js_2.arn}"

  count = "${local.lambda_js_2_count + local.cloudwatch_2_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_rule" "3" {
  name                = "${local.cloudwatch_3_name}"
  schedule_expression = "${local.cloudwatch_3_rate}"

  count = "${local.cloudwatch_3_count}"
}

resource "aws_cloudwatch_event_target" "3_go" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_go_3.arn}"

  count = "${local.lambda_go_3_count + local.cloudwatch_3_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "3_py" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_py_3.arn}"

  count = "${local.lambda_py_3_count + local.cloudwatch_3_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "3_js" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_js_3.arn}"

  count = "${local.lambda_js_3_count + local.cloudwatch_3_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_rule" "4" {
  name                = "${local.cloudwatch_4_name}"
  schedule_expression = "${local.cloudwatch_4_rate}"

  count = "${local.cloudwatch_4_count}"
}

resource "aws_cloudwatch_event_target" "4_go" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_go_4.arn}"

  count = "${local.lambda_go_4_count + local.cloudwatch_4_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "4_py" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_py_4.arn}"

  count = "${local.lambda_py_4_count + local.cloudwatch_4_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "4_js" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_js_4.arn}"

  count = "${local.lambda_js_4_count + local.cloudwatch_4_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_rule" "5" {
  name                = "${local.cloudwatch_5_name}"
  schedule_expression = "${local.cloudwatch_5_rate}"

  count = "${local.cloudwatch_5_count}"
}

resource "aws_cloudwatch_event_target" "5_go" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_go_5.arn}"

  count = "${local.lambda_go_5_count + local.cloudwatch_5_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "5_py" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_py_5.arn}"

  count = "${local.lambda_py_5_count + local.cloudwatch_5_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "5_js" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_js_5.arn}"

  count = "${local.lambda_js_5_count + local.cloudwatch_5_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_rule" "6" {
  name                = "${local.cloudwatch_6_name}"
  schedule_expression = "${local.cloudwatch_6_rate}"

  count = "${local.cloudwatch_6_count}"
}

resource "aws_cloudwatch_event_target" "6_go" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_go_6.arn}"

  count = "${local.lambda_go_6_count + local.cloudwatch_6_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "6_py" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_py_6.arn}"

  count = "${local.lambda_py_6_count + local.cloudwatch_6_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "6_js" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_js_6.arn}"

  count = "${local.lambda_js_6_count + local.cloudwatch_6_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_rule" "7" {
  name                = "${local.cloudwatch_7_name}"
  schedule_expression = "${local.cloudwatch_7_rate}"

  count = "${local.cloudwatch_7_count}"
}

resource "aws_cloudwatch_event_target" "7_go" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_go_7.arn}"

  count = "${local.lambda_go_7_count + local.cloudwatch_7_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "7_py" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_py_7.arn}"

  count = "${local.lambda_py_7_count + local.cloudwatch_7_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "7_js" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_js_7.arn}"

  count = "${local.lambda_js_7_count + local.cloudwatch_7_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_rule" "8" {
  name                = "${local.cloudwatch_8_name}"
  schedule_expression = "${local.cloudwatch_8_rate}"

  count = "${local.cloudwatch_8_count}"
}

resource "aws_cloudwatch_event_target" "8_go" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_go_8.arn}"

  count = "${local.lambda_go_8_count + local.cloudwatch_8_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "8_py" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_py_8.arn}"

  count = "${local.lambda_py_8_count + local.cloudwatch_8_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "8_js" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_js_8.arn}"

  count = "${local.lambda_js_8_count + local.cloudwatch_8_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_rule" "9" {
  name                = "${local.cloudwatch_9_name}"
  schedule_expression = "${local.cloudwatch_9_rate}"

  count = "${local.cloudwatch_9_count}"
}

resource "aws_cloudwatch_event_target" "9_go" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_go_9.arn}"

  count = "${local.lambda_go_9_count + local.cloudwatch_9_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "9_py" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_py_9.arn}"

  count = "${local.lambda_py_9_count + local.cloudwatch_9_count == 2 ? 1 : 0}"
}

resource "aws_cloudwatch_event_target" "9_js" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${aws_lambda_function.lambda_js_9.arn}"

  count = "${local.lambda_js_9_count + local.cloudwatch_9_count == 2 ? 1 : 0}"
}