// GENERATED FILE: DO NOT EDIT

data "archive_file" "lambda_py_0" {
  type        = "zip"
  source_file = "${local.lambda_py_0_source_file}"
  output_path = "${local.lambda_py_0_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_0_count}"
}

data "archive_file" "lambda_py_1" {
  type        = "zip"
  source_file = "${local.lambda_py_1_source_file}"
  output_path = "${local.lambda_py_1_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_1_count}"
}

data "archive_file" "lambda_py_2" {
  type        = "zip"
  source_file = "${local.lambda_py_2_source_file}"
  output_path = "${local.lambda_py_2_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_2_count}"
}

data "archive_file" "lambda_py_3" {
  type        = "zip"
  source_file = "${local.lambda_py_3_source_file}"
  output_path = "${local.lambda_py_3_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_3_count}"
}

data "archive_file" "lambda_py_4" {
  type        = "zip"
  source_file = "${local.lambda_py_4_source_file}"
  output_path = "${local.lambda_py_4_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_4_count}"
}

data "archive_file" "lambda_py_5" {
  type        = "zip"
  source_file = "${local.lambda_py_5_source_file}"
  output_path = "${local.lambda_py_5_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_5_count}"
}

data "archive_file" "lambda_py_6" {
  type        = "zip"
  source_file = "${local.lambda_py_6_source_file}"
  output_path = "${local.lambda_py_6_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_6_count}"
}

data "archive_file" "lambda_py_7" {
  type        = "zip"
  source_file = "${local.lambda_py_7_source_file}"
  output_path = "${local.lambda_py_7_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_7_count}"
}

data "archive_file" "lambda_py_8" {
  type        = "zip"
  source_file = "${local.lambda_py_8_source_file}"
  output_path = "${local.lambda_py_8_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_8_count}"
}

data "archive_file" "lambda_py_9" {
  type        = "zip"
  source_file = "${local.lambda_py_9_source_file}"
  output_path = "${local.lambda_py_9_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_9_count}"
}
