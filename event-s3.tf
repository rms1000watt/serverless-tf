// GENERATED FILE: DO NOT EDIT

resource "aws_s3_bucket_notification" "0" {
  bucket = "${local.s3_0_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_0_arn}"
    events              = ["${local.s3_0_events_list}"]
    filter_prefix       = "${local.s3_0_prefix}"
    filter_suffix       = "${local.s3_0_suffix}"
  }

  provider = "aws.0"
  count    = "${local.s3_0_count}"
}

resource "aws_s3_bucket_notification" "1" {
  bucket = "${local.s3_1_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_1_arn}"
    events              = ["${local.s3_1_events_list}"]
    filter_prefix       = "${local.s3_1_prefix}"
    filter_suffix       = "${local.s3_1_suffix}"
  }

  provider = "aws.1"
  count    = "${local.s3_1_count}"
}

resource "aws_s3_bucket_notification" "2" {
  bucket = "${local.s3_2_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_2_arn}"
    events              = ["${local.s3_2_events_list}"]
    filter_prefix       = "${local.s3_2_prefix}"
    filter_suffix       = "${local.s3_2_suffix}"
  }

  provider = "aws.2"
  count    = "${local.s3_2_count}"
}

resource "aws_s3_bucket_notification" "3" {
  bucket = "${local.s3_3_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_3_arn}"
    events              = ["${local.s3_3_events_list}"]
    filter_prefix       = "${local.s3_3_prefix}"
    filter_suffix       = "${local.s3_3_suffix}"
  }

  provider = "aws.3"
  count    = "${local.s3_3_count}"
}

resource "aws_s3_bucket_notification" "4" {
  bucket = "${local.s3_4_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_4_arn}"
    events              = ["${local.s3_4_events_list}"]
    filter_prefix       = "${local.s3_4_prefix}"
    filter_suffix       = "${local.s3_4_suffix}"
  }

  provider = "aws.4"
  count    = "${local.s3_4_count}"
}