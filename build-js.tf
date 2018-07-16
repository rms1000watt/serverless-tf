// data "archive_file" "lambda_js" {
//   type        = "zip"
//   source_file = "${local.lambda_js_source_file}"
//   output_path = "${local.lambda_js_zip}"
//   depends_on = ["null_resource.validator"]
//   count      = "${local.lambda_js_count}"
// }

