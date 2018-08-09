// GENERATED FILE: DO NOT EDIT

resource "aws_s3_bucket_notification" "0" {
  bucket = "${local.s3_0_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_0_arn}"
    events              = ["${local.s3_0_events_list}"]
    filter_prefix       = "${local.s3_0_prefix}"
    filter_suffix       = "${local.s3_0_suffix}"
  }

  count = "${local.s3_0_count}"
}

resource "aws_s3_bucket_notification" "1" {
  bucket = "${local.s3_1_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_1_arn}"
    events              = ["${local.s3_1_events_list}"]
    filter_prefix       = "${local.s3_1_prefix}"
    filter_suffix       = "${local.s3_1_suffix}"
  }

  count = "${local.s3_1_count}"
}

resource "aws_s3_bucket_notification" "2" {
  bucket = "${local.s3_2_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_2_arn}"
    events              = ["${local.s3_2_events_list}"]
    filter_prefix       = "${local.s3_2_prefix}"
    filter_suffix       = "${local.s3_2_suffix}"
  }

  count = "${local.s3_2_count}"
}

resource "aws_s3_bucket_notification" "3" {
  bucket = "${local.s3_3_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_3_arn}"
    events              = ["${local.s3_3_events_list}"]
    filter_prefix       = "${local.s3_3_prefix}"
    filter_suffix       = "${local.s3_3_suffix}"
  }

  count = "${local.s3_3_count}"
}

resource "aws_s3_bucket_notification" "4" {
  bucket = "${local.s3_4_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_4_arn}"
    events              = ["${local.s3_4_events_list}"]
    filter_prefix       = "${local.s3_4_prefix}"
    filter_suffix       = "${local.s3_4_suffix}"
  }

  count = "${local.s3_4_count}"
}

resource "aws_s3_bucket_notification" "5" {
  bucket = "${local.s3_5_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_5_arn}"
    events              = ["${local.s3_5_events_list}"]
    filter_prefix       = "${local.s3_5_prefix}"
    filter_suffix       = "${local.s3_5_suffix}"
  }

  count = "${local.s3_5_count}"
}

resource "aws_s3_bucket_notification" "6" {
  bucket = "${local.s3_6_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_6_arn}"
    events              = ["${local.s3_6_events_list}"]
    filter_prefix       = "${local.s3_6_prefix}"
    filter_suffix       = "${local.s3_6_suffix}"
  }

  count = "${local.s3_6_count}"
}

resource "aws_s3_bucket_notification" "7" {
  bucket = "${local.s3_7_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_7_arn}"
    events              = ["${local.s3_7_events_list}"]
    filter_prefix       = "${local.s3_7_prefix}"
    filter_suffix       = "${local.s3_7_suffix}"
  }

  count = "${local.s3_7_count}"
}

resource "aws_s3_bucket_notification" "8" {
  bucket = "${local.s3_8_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_8_arn}"
    events              = ["${local.s3_8_events_list}"]
    filter_prefix       = "${local.s3_8_prefix}"
    filter_suffix       = "${local.s3_8_suffix}"
  }

  count = "${local.s3_8_count}"
}

resource "aws_s3_bucket_notification" "9" {
  bucket = "${local.s3_9_bucket}"

  lambda_function {
    lambda_function_arn = "${local.lambda_9_arn}"
    events              = ["${local.s3_9_events_list}"]
    filter_prefix       = "${local.s3_9_prefix}"
    filter_suffix       = "${local.s3_9_suffix}"
  }

  count = "${local.s3_9_count}"
}