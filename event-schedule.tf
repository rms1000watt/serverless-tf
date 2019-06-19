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