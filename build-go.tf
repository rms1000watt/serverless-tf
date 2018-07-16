resource "null_resource" "go_0_build" {
  provisioner "local-exec" {
    command = "${local.lambda_0_vendor_cmd != "" ? "${local.lambda_0_vendor_cmd} && " : ""}${local.lambda_0_test_cmd != "" ? "${local.lambda_0_test_cmd} && " : ""}GOOS=linux go build -o ${local.lambda_go_0_bin}"
  }

  triggers {
    b64sha            = "${local.lambda_0_b64sha256}"
    lambda_go_runtime = "${local.lambda_go_0_runtime}"
    lambda_go_name    = "${local.lambda_go_0_name}"
    lambda_go_handler = "${local.lambda_go_0_handler}"
    lambda_go_bin     = "${local.lambda_go_0_bin}"
    lambda_go_zip     = "${local.lambda_go_0_zip}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_go_0_count}"
}

data "archive_file" "lambda_go_0" {
  type        = "zip"
  source_file = "${local.lambda_go_0_bin}"
  output_path = "${local.lambda_go_0_zip}"

  depends_on = ["null_resource.go_0_build"]
  count      = "${local.lambda_go_0_count}"
}
