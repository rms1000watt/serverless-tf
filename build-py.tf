// GENERATED FILE: DO NOT EDIT

data "archive_file" "lambda_py_0" {
  type        = "zip"
  source_file = "${local.lambda_py_0_source_file}"
  output_path = "${local.lambda_py_0_zip}"
  depends_on  = ["null_resource.validator"]

  count       = "${local.lambda_py_0_count}"
}
