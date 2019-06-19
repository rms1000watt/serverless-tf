// GENERATED FILE: DO NOT EDIT

resource "null_resource" "js_0_build" {
  provisioner "local-exec" {
    command     = "cd ${local.lambda_0_dir}; ${local.lambda_0_vendor_cmd != "" ? "${local.lambda_0_vendor_cmd} && " : ""}${local.lambda_0_test_cmd != "" ? "${local.lambda_0_test_cmd} && " : ""}echo 'js 0 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_0_file))}"
    lambda_js_runtime     = "${local.lambda_js_0_runtime}"
    lambda_js_name        = "${local.lambda_js_0_name}"
    lambda_js_handler     = "${local.lambda_js_0_handler}"
    lambda_js_source_file = "${local.lambda_js_0_source_file}"
    lambda_js_zip         = "${local.lambda_js_0_zip}"
    rebuild               = "${local.lambda_0_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_js_0_count}"
}

data "archive_file" "lambda_js_0" {
  type        = "zip"
  source_file = "${local.lambda_js_0_source_file}"
  output_path = "${local.lambda_js_0_zip}"

  depends_on = ["null_resource.js_0_build"]
  count      = "${local.lambda_js_0_count}"
}

resource "null_resource" "js_1_build" {
  provisioner "local-exec" {
    command     = "cd ${local.lambda_1_dir}; ${local.lambda_1_vendor_cmd != "" ? "${local.lambda_1_vendor_cmd} && " : ""}${local.lambda_1_test_cmd != "" ? "${local.lambda_1_test_cmd} && " : ""}echo 'js 1 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_1_file))}"
    lambda_js_runtime     = "${local.lambda_js_1_runtime}"
    lambda_js_name        = "${local.lambda_js_1_name}"
    lambda_js_handler     = "${local.lambda_js_1_handler}"
    lambda_js_source_file = "${local.lambda_js_1_source_file}"
    lambda_js_zip         = "${local.lambda_js_1_zip}"
    rebuild               = "${local.lambda_1_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_js_1_count}"
}

data "archive_file" "lambda_js_1" {
  type        = "zip"
  source_file = "${local.lambda_js_1_source_file}"
  output_path = "${local.lambda_js_1_zip}"

  depends_on = ["null_resource.js_1_build"]
  count      = "${local.lambda_js_1_count}"
}

resource "null_resource" "js_2_build" {
  provisioner "local-exec" {
    command     = "cd ${local.lambda_2_dir}; ${local.lambda_2_vendor_cmd != "" ? "${local.lambda_2_vendor_cmd} && " : ""}${local.lambda_2_test_cmd != "" ? "${local.lambda_2_test_cmd} && " : ""}echo 'js 2 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_2_file))}"
    lambda_js_runtime     = "${local.lambda_js_2_runtime}"
    lambda_js_name        = "${local.lambda_js_2_name}"
    lambda_js_handler     = "${local.lambda_js_2_handler}"
    lambda_js_source_file = "${local.lambda_js_2_source_file}"
    lambda_js_zip         = "${local.lambda_js_2_zip}"
    rebuild               = "${local.lambda_2_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_js_2_count}"
}

data "archive_file" "lambda_js_2" {
  type        = "zip"
  source_file = "${local.lambda_js_2_source_file}"
  output_path = "${local.lambda_js_2_zip}"

  depends_on = ["null_resource.js_2_build"]
  count      = "${local.lambda_js_2_count}"
}

resource "null_resource" "js_3_build" {
  provisioner "local-exec" {
    command     = "cd ${local.lambda_3_dir}; ${local.lambda_3_vendor_cmd != "" ? "${local.lambda_3_vendor_cmd} && " : ""}${local.lambda_3_test_cmd != "" ? "${local.lambda_3_test_cmd} && " : ""}echo 'js 3 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_3_file))}"
    lambda_js_runtime     = "${local.lambda_js_3_runtime}"
    lambda_js_name        = "${local.lambda_js_3_name}"
    lambda_js_handler     = "${local.lambda_js_3_handler}"
    lambda_js_source_file = "${local.lambda_js_3_source_file}"
    lambda_js_zip         = "${local.lambda_js_3_zip}"
    rebuild               = "${local.lambda_3_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_js_3_count}"
}

data "archive_file" "lambda_js_3" {
  type        = "zip"
  source_file = "${local.lambda_js_3_source_file}"
  output_path = "${local.lambda_js_3_zip}"

  depends_on = ["null_resource.js_3_build"]
  count      = "${local.lambda_js_3_count}"
}

resource "null_resource" "js_4_build" {
  provisioner "local-exec" {
    command     = "cd ${local.lambda_4_dir}; ${local.lambda_4_vendor_cmd != "" ? "${local.lambda_4_vendor_cmd} && " : ""}${local.lambda_4_test_cmd != "" ? "${local.lambda_4_test_cmd} && " : ""}echo 'js 4 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_4_file))}"
    lambda_js_runtime     = "${local.lambda_js_4_runtime}"
    lambda_js_name        = "${local.lambda_js_4_name}"
    lambda_js_handler     = "${local.lambda_js_4_handler}"
    lambda_js_source_file = "${local.lambda_js_4_source_file}"
    lambda_js_zip         = "${local.lambda_js_4_zip}"
    rebuild               = "${local.lambda_4_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_js_4_count}"
}

data "archive_file" "lambda_js_4" {
  type        = "zip"
  source_file = "${local.lambda_js_4_source_file}"
  output_path = "${local.lambda_js_4_zip}"

  depends_on = ["null_resource.js_4_build"]
  count      = "${local.lambda_js_4_count}"
}
