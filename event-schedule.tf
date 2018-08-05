// GENERATED FILE: DO NOT EDIT

resource "aws_cloudwatch_event_rule" "0" {
  name                = "${local.cloudwatch_0_name}"
  schedule_expression = "${local.cloudwatch_0_rate}"

  count = "${local.cloudwatch_0_count}"
}

resource "aws_cloudwatch_event_target" "0" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${local.lambda_0_arn}"

  count = "${local.cloudwatch_0_count}"
}

resource "aws_cloudwatch_event_rule" "1" {
  name                = "${local.cloudwatch_1_name}"
  schedule_expression = "${local.cloudwatch_1_rate}"

  count = "${local.cloudwatch_1_count}"
}

resource "aws_cloudwatch_event_target" "1" {
  rule = "${aws_cloudwatch_event_rule.1.name}"
  arn  = "${local.lambda_1_arn}"

  count = "${local.cloudwatch_1_count}"
}

resource "aws_cloudwatch_event_rule" "2" {
  name                = "${local.cloudwatch_2_name}"
  schedule_expression = "${local.cloudwatch_2_rate}"

  count = "${local.cloudwatch_2_count}"
}

resource "aws_cloudwatch_event_target" "2" {
  rule = "${aws_cloudwatch_event_rule.2.name}"
  arn  = "${local.lambda_2_arn}"

  count = "${local.cloudwatch_2_count}"
}

resource "aws_cloudwatch_event_rule" "3" {
  name                = "${local.cloudwatch_3_name}"
  schedule_expression = "${local.cloudwatch_3_rate}"

  count = "${local.cloudwatch_3_count}"
}

resource "aws_cloudwatch_event_target" "3" {
  rule = "${aws_cloudwatch_event_rule.3.name}"
  arn  = "${local.lambda_3_arn}"

  count = "${local.cloudwatch_3_count}"
}

resource "aws_cloudwatch_event_rule" "4" {
  name                = "${local.cloudwatch_4_name}"
  schedule_expression = "${local.cloudwatch_4_rate}"

  count = "${local.cloudwatch_4_count}"
}

resource "aws_cloudwatch_event_target" "4" {
  rule = "${aws_cloudwatch_event_rule.4.name}"
  arn  = "${local.lambda_4_arn}"

  count = "${local.cloudwatch_4_count}"
}

resource "aws_cloudwatch_event_rule" "5" {
  name                = "${local.cloudwatch_5_name}"
  schedule_expression = "${local.cloudwatch_5_rate}"

  count = "${local.cloudwatch_5_count}"
}

resource "aws_cloudwatch_event_target" "5" {
  rule = "${aws_cloudwatch_event_rule.5.name}"
  arn  = "${local.lambda_5_arn}"

  count = "${local.cloudwatch_5_count}"
}

resource "aws_cloudwatch_event_rule" "6" {
  name                = "${local.cloudwatch_6_name}"
  schedule_expression = "${local.cloudwatch_6_rate}"

  count = "${local.cloudwatch_6_count}"
}

resource "aws_cloudwatch_event_target" "6" {
  rule = "${aws_cloudwatch_event_rule.6.name}"
  arn  = "${local.lambda_6_arn}"

  count = "${local.cloudwatch_6_count}"
}

resource "aws_cloudwatch_event_rule" "7" {
  name                = "${local.cloudwatch_7_name}"
  schedule_expression = "${local.cloudwatch_7_rate}"

  count = "${local.cloudwatch_7_count}"
}

resource "aws_cloudwatch_event_target" "7" {
  rule = "${aws_cloudwatch_event_rule.7.name}"
  arn  = "${local.lambda_7_arn}"

  count = "${local.cloudwatch_7_count}"
}

resource "aws_cloudwatch_event_rule" "8" {
  name                = "${local.cloudwatch_8_name}"
  schedule_expression = "${local.cloudwatch_8_rate}"

  count = "${local.cloudwatch_8_count}"
}

resource "aws_cloudwatch_event_target" "8" {
  rule = "${aws_cloudwatch_event_rule.8.name}"
  arn  = "${local.lambda_8_arn}"

  count = "${local.cloudwatch_8_count}"
}

resource "aws_cloudwatch_event_rule" "9" {
  name                = "${local.cloudwatch_9_name}"
  schedule_expression = "${local.cloudwatch_9_rate}"

  count = "${local.cloudwatch_9_count}"
}

resource "aws_cloudwatch_event_target" "9" {
  rule = "${aws_cloudwatch_event_rule.9.name}"
  arn  = "${local.lambda_9_arn}"

  count = "${local.cloudwatch_9_count}"
}