// GENERATED FILE: DO NOT EDIT

resource "aws_cloudwatch_event_rule" "0" {
  name                = "${local.cloudwatch_0_name}"
  schedule_expression = "${local.cloudwatch_0_rate}"

  provider = "aws.0"
  count    = "${local.cloudwatch_0_count}"
}

resource "aws_cloudwatch_event_target" "0" {
  rule = "${aws_cloudwatch_event_rule.0.name}"
  arn  = "${local.lambda_0_arn}"

  provider = "aws.0"
  count    = "${local.cloudwatch_0_count}"
}

resource "aws_cloudwatch_event_rule" "1" {
  name                = "${local.cloudwatch_1_name}"
  schedule_expression = "${local.cloudwatch_1_rate}"

  provider = "aws.1"
  count    = "${local.cloudwatch_1_count}"
}

resource "aws_cloudwatch_event_target" "1" {
  rule = "${aws_cloudwatch_event_rule.1.name}"
  arn  = "${local.lambda_1_arn}"

  provider = "aws.1"
  count    = "${local.cloudwatch_1_count}"
}

resource "aws_cloudwatch_event_rule" "2" {
  name                = "${local.cloudwatch_2_name}"
  schedule_expression = "${local.cloudwatch_2_rate}"

  provider = "aws.2"
  count    = "${local.cloudwatch_2_count}"
}

resource "aws_cloudwatch_event_target" "2" {
  rule = "${aws_cloudwatch_event_rule.2.name}"
  arn  = "${local.lambda_2_arn}"

  provider = "aws.2"
  count    = "${local.cloudwatch_2_count}"
}

resource "aws_cloudwatch_event_rule" "3" {
  name                = "${local.cloudwatch_3_name}"
  schedule_expression = "${local.cloudwatch_3_rate}"

  provider = "aws.3"
  count    = "${local.cloudwatch_3_count}"
}

resource "aws_cloudwatch_event_target" "3" {
  rule = "${aws_cloudwatch_event_rule.3.name}"
  arn  = "${local.lambda_3_arn}"

  provider = "aws.3"
  count    = "${local.cloudwatch_3_count}"
}

resource "aws_cloudwatch_event_rule" "4" {
  name                = "${local.cloudwatch_4_name}"
  schedule_expression = "${local.cloudwatch_4_rate}"

  provider = "aws.4"
  count    = "${local.cloudwatch_4_count}"
}

resource "aws_cloudwatch_event_target" "4" {
  rule = "${aws_cloudwatch_event_rule.4.name}"
  arn  = "${local.lambda_4_arn}"

  provider = "aws.4"
  count    = "${local.cloudwatch_4_count}"
}

resource "aws_cloudwatch_event_rule" "5" {
  name                = "${local.cloudwatch_5_name}"
  schedule_expression = "${local.cloudwatch_5_rate}"

  provider = "aws.5"
  count    = "${local.cloudwatch_5_count}"
}

resource "aws_cloudwatch_event_target" "5" {
  rule = "${aws_cloudwatch_event_rule.5.name}"
  arn  = "${local.lambda_5_arn}"

  provider = "aws.5"
  count    = "${local.cloudwatch_5_count}"
}

resource "aws_cloudwatch_event_rule" "6" {
  name                = "${local.cloudwatch_6_name}"
  schedule_expression = "${local.cloudwatch_6_rate}"

  provider = "aws.6"
  count    = "${local.cloudwatch_6_count}"
}

resource "aws_cloudwatch_event_target" "6" {
  rule = "${aws_cloudwatch_event_rule.6.name}"
  arn  = "${local.lambda_6_arn}"

  provider = "aws.6"
  count    = "${local.cloudwatch_6_count}"
}

resource "aws_cloudwatch_event_rule" "7" {
  name                = "${local.cloudwatch_7_name}"
  schedule_expression = "${local.cloudwatch_7_rate}"

  provider = "aws.7"
  count    = "${local.cloudwatch_7_count}"
}

resource "aws_cloudwatch_event_target" "7" {
  rule = "${aws_cloudwatch_event_rule.7.name}"
  arn  = "${local.lambda_7_arn}"

  provider = "aws.7"
  count    = "${local.cloudwatch_7_count}"
}

resource "aws_cloudwatch_event_rule" "8" {
  name                = "${local.cloudwatch_8_name}"
  schedule_expression = "${local.cloudwatch_8_rate}"

  provider = "aws.8"
  count    = "${local.cloudwatch_8_count}"
}

resource "aws_cloudwatch_event_target" "8" {
  rule = "${aws_cloudwatch_event_rule.8.name}"
  arn  = "${local.lambda_8_arn}"

  provider = "aws.8"
  count    = "${local.cloudwatch_8_count}"
}

resource "aws_cloudwatch_event_rule" "9" {
  name                = "${local.cloudwatch_9_name}"
  schedule_expression = "${local.cloudwatch_9_rate}"

  provider = "aws.9"
  count    = "${local.cloudwatch_9_count}"
}

resource "aws_cloudwatch_event_target" "9" {
  rule = "${aws_cloudwatch_event_rule.9.name}"
  arn  = "${local.lambda_9_arn}"

  provider = "aws.9"
  count    = "${local.cloudwatch_9_count}"
}