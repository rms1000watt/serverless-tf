// GENERATED FILE: DO NOT EDIT

resource "null_resource" "go_0_build" {
  provisioner "local-exec" {
    command     = "cd ${local.lambda_0_dir}; ${local.lambda_0_vendor_cmd != "" ? "${local.lambda_0_vendor_cmd} && " : ""}${local.lambda_0_test_cmd != "" ? "${local.lambda_0_test_cmd} && " : ""}GOOS=linux go build -o ${local.lambda_go_0_bin}"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha            = "${base64sha256(file(local.lambda_0_file))}"
    lambda_go_runtime = "${local.lambda_go_0_runtime}"
    lambda_go_name    = "${local.lambda_go_0_name}"
    lambda_go_handler = "${local.lambda_go_0_handler}"
    lambda_go_bin     = "${local.lambda_go_0_bin}"
    lambda_go_zip     = "${local.lambda_go_0_zip}"
    rebuild           = "${local.lambda_0_rebuild ? timestamp() : local.default_rebuild}"
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

resource "null_resource" "go_1_build" {
  provisioner "local-exec" {
    command     = "cd ${local.lambda_1_dir}; ${local.lambda_1_vendor_cmd != "" ? "${local.lambda_1_vendor_cmd} && " : ""}${local.lambda_1_test_cmd != "" ? "${local.lambda_1_test_cmd} && " : ""}GOOS=linux go build -o ${local.lambda_go_1_bin}"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha            = "${base64sha256(file(local.lambda_1_file))}"
    lambda_go_runtime = "${local.lambda_go_1_runtime}"
    lambda_go_name    = "${local.lambda_go_1_name}"
    lambda_go_handler = "${local.lambda_go_1_handler}"
    lambda_go_bin     = "${local.lambda_go_1_bin}"
    lambda_go_zip     = "${local.lambda_go_1_zip}"
    rebuild           = "${local.lambda_1_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_go_1_count}"
}

data "archive_file" "lambda_go_1" {
  type        = "zip"
  source_file = "${local.lambda_go_1_bin}"
  output_path = "${local.lambda_go_1_zip}"

  depends_on = ["null_resource.go_1_build"]
  count      = "${local.lambda_go_1_count}"
}

resource "null_resource" "go_2_build" {
  provisioner "local-exec" {
    command     = "cd ${local.lambda_2_dir}; ${local.lambda_2_vendor_cmd != "" ? "${local.lambda_2_vendor_cmd} && " : ""}${local.lambda_2_test_cmd != "" ? "${local.lambda_2_test_cmd} && " : ""}GOOS=linux go build -o ${local.lambda_go_2_bin}"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha            = "${base64sha256(file(local.lambda_2_file))}"
    lambda_go_runtime = "${local.lambda_go_2_runtime}"
    lambda_go_name    = "${local.lambda_go_2_name}"
    lambda_go_handler = "${local.lambda_go_2_handler}"
    lambda_go_bin     = "${local.lambda_go_2_bin}"
    lambda_go_zip     = "${local.lambda_go_2_zip}"
    rebuild           = "${local.lambda_2_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_go_2_count}"
}

data "archive_file" "lambda_go_2" {
  type        = "zip"
  source_file = "${local.lambda_go_2_bin}"
  output_path = "${local.lambda_go_2_zip}"

  depends_on = ["null_resource.go_2_build"]
  count      = "${local.lambda_go_2_count}"
}

resource "null_resource" "go_3_build" {
  provisioner "local-exec" {
    command     = "cd ${local.lambda_3_dir}; ${local.lambda_3_vendor_cmd != "" ? "${local.lambda_3_vendor_cmd} && " : ""}${local.lambda_3_test_cmd != "" ? "${local.lambda_3_test_cmd} && " : ""}GOOS=linux go build -o ${local.lambda_go_3_bin}"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha            = "${base64sha256(file(local.lambda_3_file))}"
    lambda_go_runtime = "${local.lambda_go_3_runtime}"
    lambda_go_name    = "${local.lambda_go_3_name}"
    lambda_go_handler = "${local.lambda_go_3_handler}"
    lambda_go_bin     = "${local.lambda_go_3_bin}"
    lambda_go_zip     = "${local.lambda_go_3_zip}"
    rebuild           = "${local.lambda_3_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_go_3_count}"
}

data "archive_file" "lambda_go_3" {
  type        = "zip"
  source_file = "${local.lambda_go_3_bin}"
  output_path = "${local.lambda_go_3_zip}"

  depends_on = ["null_resource.go_3_build"]
  count      = "${local.lambda_go_3_count}"
}

resource "null_resource" "go_4_build" {
  provisioner "local-exec" {
    command     = "cd ${local.lambda_4_dir}; ${local.lambda_4_vendor_cmd != "" ? "${local.lambda_4_vendor_cmd} && " : ""}${local.lambda_4_test_cmd != "" ? "${local.lambda_4_test_cmd} && " : ""}GOOS=linux go build -o ${local.lambda_go_4_bin}"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha            = "${base64sha256(file(local.lambda_4_file))}"
    lambda_go_runtime = "${local.lambda_go_4_runtime}"
    lambda_go_name    = "${local.lambda_go_4_name}"
    lambda_go_handler = "${local.lambda_go_4_handler}"
    lambda_go_bin     = "${local.lambda_go_4_bin}"
    lambda_go_zip     = "${local.lambda_go_4_zip}"
    rebuild           = "${local.lambda_4_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_go_4_count}"
}

data "archive_file" "lambda_go_4" {
  type        = "zip"
  source_file = "${local.lambda_go_4_bin}"
  output_path = "${local.lambda_go_4_zip}"

  depends_on = ["null_resource.go_4_build"]
  count      = "${local.lambda_go_4_count}"
}
