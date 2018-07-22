// GENERATED FILE: DO NOT EDIT

data "archive_file" "lambda_js_0" {
  type        = "zip"
  source_file = "${local.lambda_js_0_source_file}"
  output_path = "${local.lambda_js_0_zip}"

  depends_on  = ["null_resource.validator"]
  count       = "${local.lambda_js_0_count}"
}

data "archive_file" "lambda_js_1" {
  type        = "zip"
  source_file = "${local.lambda_js_1_source_file}"
  output_path = "${local.lambda_js_1_zip}"

  depends_on  = ["null_resource.validator"]
  count       = "${local.lambda_js_1_count}"
}

data "archive_file" "lambda_js_2" {
  type        = "zip"
  source_file = "${local.lambda_js_2_source_file}"
  output_path = "${local.lambda_js_2_zip}"

  depends_on  = ["null_resource.validator"]
  count       = "${local.lambda_js_2_count}"
}

data "archive_file" "lambda_js_3" {
  type        = "zip"
  source_file = "${local.lambda_js_3_source_file}"
  output_path = "${local.lambda_js_3_zip}"

  depends_on  = ["null_resource.validator"]
  count       = "${local.lambda_js_3_count}"
}

data "archive_file" "lambda_js_4" {
  type        = "zip"
  source_file = "${local.lambda_js_4_source_file}"
  output_path = "${local.lambda_js_4_zip}"

  depends_on  = ["null_resource.validator"]
  count       = "${local.lambda_js_4_count}"
}

data "archive_file" "lambda_js_5" {
  type        = "zip"
  source_file = "${local.lambda_js_5_source_file}"
  output_path = "${local.lambda_js_5_zip}"

  depends_on  = ["null_resource.validator"]
  count       = "${local.lambda_js_5_count}"
}

data "archive_file" "lambda_js_6" {
  type        = "zip"
  source_file = "${local.lambda_js_6_source_file}"
  output_path = "${local.lambda_js_6_zip}"

  depends_on  = ["null_resource.validator"]
  count       = "${local.lambda_js_6_count}"
}

data "archive_file" "lambda_js_7" {
  type        = "zip"
  source_file = "${local.lambda_js_7_source_file}"
  output_path = "${local.lambda_js_7_zip}"

  depends_on  = ["null_resource.validator"]
  count       = "${local.lambda_js_7_count}"
}

data "archive_file" "lambda_js_8" {
  type        = "zip"
  source_file = "${local.lambda_js_8_source_file}"
  output_path = "${local.lambda_js_8_zip}"

  depends_on  = ["null_resource.validator"]
  count       = "${local.lambda_js_8_count}"
}

data "archive_file" "lambda_js_9" {
  type        = "zip"
  source_file = "${local.lambda_js_9_source_file}"
  output_path = "${local.lambda_js_9_zip}"

  depends_on  = ["null_resource.validator"]
  count       = "${local.lambda_js_9_count}"
}
