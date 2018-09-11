// GENERATED FILE: DO NOT EDIT

resource "aws_cloudwatch_event_rule" "cloudwatch_event_0" {
  name        = "${local.cloudwatch_event_0_name}"
  event_pattern = <<EOF
${local.cloudwatch_event_0_pattern}
EOF

  count = "${local.cloudwatch_event_0_count}"
}

resource "aws_cloudwatch_event_target" "cloudwatch_event_0" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch_event_0.name}"
  target_id = "${local.cloudwatch_event_0_name}"
  arn       = "${local.lambda_0_arn}"

  count = "${local.cloudwatch_event_0_count}"
}

resource "aws_cloudwatch_event_rule" "cloudwatch_event_1" {
  name        = "${local.cloudwatch_event_1_name}"
  event_pattern = <<EOF
${local.cloudwatch_event_1_pattern}
EOF

  count = "${local.cloudwatch_event_1_count}"
}

resource "aws_cloudwatch_event_target" "cloudwatch_event_1" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch_event_1.name}"
  target_id = "${local.cloudwatch_event_1_name}"
  arn       = "${local.lambda_1_arn}"

  count = "${local.cloudwatch_event_1_count}"
}

resource "aws_cloudwatch_event_rule" "cloudwatch_event_2" {
  name        = "${local.cloudwatch_event_2_name}"
  event_pattern = <<EOF
${local.cloudwatch_event_2_pattern}
EOF

  count = "${local.cloudwatch_event_2_count}"
}

resource "aws_cloudwatch_event_target" "cloudwatch_event_2" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch_event_2.name}"
  target_id = "${local.cloudwatch_event_2_name}"
  arn       = "${local.lambda_2_arn}"

  count = "${local.cloudwatch_event_2_count}"
}

resource "aws_cloudwatch_event_rule" "cloudwatch_event_3" {
  name        = "${local.cloudwatch_event_3_name}"
  event_pattern = <<EOF
${local.cloudwatch_event_3_pattern}
EOF

  count = "${local.cloudwatch_event_3_count}"
}

resource "aws_cloudwatch_event_target" "cloudwatch_event_3" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch_event_3.name}"
  target_id = "${local.cloudwatch_event_3_name}"
  arn       = "${local.lambda_3_arn}"

  count = "${local.cloudwatch_event_3_count}"
}

resource "aws_cloudwatch_event_rule" "cloudwatch_event_4" {
  name        = "${local.cloudwatch_event_4_name}"
  event_pattern = <<EOF
${local.cloudwatch_event_4_pattern}
EOF

  count = "${local.cloudwatch_event_4_count}"
}

resource "aws_cloudwatch_event_target" "cloudwatch_event_4" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch_event_4.name}"
  target_id = "${local.cloudwatch_event_4_name}"
  arn       = "${local.lambda_4_arn}"

  count = "${local.cloudwatch_event_4_count}"
}

resource "aws_cloudwatch_event_rule" "cloudwatch_event_5" {
  name        = "${local.cloudwatch_event_5_name}"
  event_pattern = <<EOF
${local.cloudwatch_event_5_pattern}
EOF

  count = "${local.cloudwatch_event_5_count}"
}

resource "aws_cloudwatch_event_target" "cloudwatch_event_5" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch_event_5.name}"
  target_id = "${local.cloudwatch_event_5_name}"
  arn       = "${local.lambda_5_arn}"

  count = "${local.cloudwatch_event_5_count}"
}

resource "aws_cloudwatch_event_rule" "cloudwatch_event_6" {
  name        = "${local.cloudwatch_event_6_name}"
  event_pattern = <<EOF
${local.cloudwatch_event_6_pattern}
EOF

  count = "${local.cloudwatch_event_6_count}"
}

resource "aws_cloudwatch_event_target" "cloudwatch_event_6" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch_event_6.name}"
  target_id = "${local.cloudwatch_event_6_name}"
  arn       = "${local.lambda_6_arn}"

  count = "${local.cloudwatch_event_6_count}"
}

resource "aws_cloudwatch_event_rule" "cloudwatch_event_7" {
  name        = "${local.cloudwatch_event_7_name}"
  event_pattern = <<EOF
${local.cloudwatch_event_7_pattern}
EOF

  count = "${local.cloudwatch_event_7_count}"
}

resource "aws_cloudwatch_event_target" "cloudwatch_event_7" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch_event_7.name}"
  target_id = "${local.cloudwatch_event_7_name}"
  arn       = "${local.lambda_7_arn}"

  count = "${local.cloudwatch_event_7_count}"
}

resource "aws_cloudwatch_event_rule" "cloudwatch_event_8" {
  name        = "${local.cloudwatch_event_8_name}"
  event_pattern = <<EOF
${local.cloudwatch_event_8_pattern}
EOF

  count = "${local.cloudwatch_event_8_count}"
}

resource "aws_cloudwatch_event_target" "cloudwatch_event_8" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch_event_8.name}"
  target_id = "${local.cloudwatch_event_8_name}"
  arn       = "${local.lambda_8_arn}"

  count = "${local.cloudwatch_event_8_count}"
}

resource "aws_cloudwatch_event_rule" "cloudwatch_event_9" {
  name        = "${local.cloudwatch_event_9_name}"
  event_pattern = <<EOF
${local.cloudwatch_event_9_pattern}
EOF

  count = "${local.cloudwatch_event_9_count}"
}

resource "aws_cloudwatch_event_target" "cloudwatch_event_9" {
  rule      = "${aws_cloudwatch_event_rule.cloudwatch_event_9.name}"
  target_id = "${local.cloudwatch_event_9_name}"
  arn       = "${local.lambda_9_arn}"

  count = "${local.cloudwatch_event_9_count}"
}
