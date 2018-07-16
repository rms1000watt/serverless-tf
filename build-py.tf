// data "archive_file" "lambda_py" {
//   type        = "zip"
//   source_file = "${local.lambda_py_source_file}"
//   output_path = "${local.lambda_py_zip}"
//   depends_on = ["null_resource.validator"]
//   count      = "${local.lambda_py_count}"
// }

