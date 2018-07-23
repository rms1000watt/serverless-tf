// GENERATED FILE: DO NOT EDIT

resource "null_resource" "py_0_build" {
  provisioner "local-exec" {
    command     = "${local.lambda_0_vendor_cmd != "" ? "${local.lambda_0_vendor_cmd} && " : ""}${local.lambda_0_test_cmd != "" ? "${local.lambda_0_test_cmd} && " : ""}echo 'py 0 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_0_file))}"
    lambda_py_runtime     = "${local.lambda_py_0_runtime}"
    lambda_py_name        = "${local.lambda_py_0_name}"
    lambda_py_handler     = "${local.lambda_py_0_handler}"
    lambda_py_source_file = "${local.lambda_py_0_source_file}"
    lambda_py_zip         = "${local.lambda_py_0_zip}"
    rebuild               = "${local.lambda_0_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_py_0_count}"
}

data "archive_file" "lambda_py_0" {
  type        = "zip"
  source_file = "${local.lambda_py_0_source_file}"
  output_path = "${local.lambda_py_0_zip}"

  depends_on = ["null_resource.py_0_build"]
  count      = "${local.lambda_py_0_count}"
}

resource "null_resource" "py_1_build" {
  provisioner "local-exec" {
    command     = "${local.lambda_1_vendor_cmd != "" ? "${local.lambda_1_vendor_cmd} && " : ""}${local.lambda_1_test_cmd != "" ? "${local.lambda_1_test_cmd} && " : ""}echo 'py 1 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_1_file))}"
    lambda_py_runtime     = "${local.lambda_py_1_runtime}"
    lambda_py_name        = "${local.lambda_py_1_name}"
    lambda_py_handler     = "${local.lambda_py_1_handler}"
    lambda_py_source_file = "${local.lambda_py_1_source_file}"
    lambda_py_zip         = "${local.lambda_py_1_zip}"
    rebuild               = "${local.lambda_1_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_py_1_count}"
}

data "archive_file" "lambda_py_1" {
  type        = "zip"
  source_file = "${local.lambda_py_1_source_file}"
  output_path = "${local.lambda_py_1_zip}"

  depends_on = ["null_resource.py_1_build"]
  count      = "${local.lambda_py_1_count}"
}

resource "null_resource" "py_2_build" {
  provisioner "local-exec" {
    command     = "${local.lambda_2_vendor_cmd != "" ? "${local.lambda_2_vendor_cmd} && " : ""}${local.lambda_2_test_cmd != "" ? "${local.lambda_2_test_cmd} && " : ""}echo 'py 2 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_2_file))}"
    lambda_py_runtime     = "${local.lambda_py_2_runtime}"
    lambda_py_name        = "${local.lambda_py_2_name}"
    lambda_py_handler     = "${local.lambda_py_2_handler}"
    lambda_py_source_file = "${local.lambda_py_2_source_file}"
    lambda_py_zip         = "${local.lambda_py_2_zip}"
    rebuild               = "${local.lambda_2_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_py_2_count}"
}

data "archive_file" "lambda_py_2" {
  type        = "zip"
  source_file = "${local.lambda_py_2_source_file}"
  output_path = "${local.lambda_py_2_zip}"

  depends_on = ["null_resource.py_2_build"]
  count      = "${local.lambda_py_2_count}"
}

resource "null_resource" "py_3_build" {
  provisioner "local-exec" {
    command     = "${local.lambda_3_vendor_cmd != "" ? "${local.lambda_3_vendor_cmd} && " : ""}${local.lambda_3_test_cmd != "" ? "${local.lambda_3_test_cmd} && " : ""}echo 'py 3 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_3_file))}"
    lambda_py_runtime     = "${local.lambda_py_3_runtime}"
    lambda_py_name        = "${local.lambda_py_3_name}"
    lambda_py_handler     = "${local.lambda_py_3_handler}"
    lambda_py_source_file = "${local.lambda_py_3_source_file}"
    lambda_py_zip         = "${local.lambda_py_3_zip}"
    rebuild               = "${local.lambda_3_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_py_3_count}"
}

data "archive_file" "lambda_py_3" {
  type        = "zip"
  source_file = "${local.lambda_py_3_source_file}"
  output_path = "${local.lambda_py_3_zip}"

  depends_on = ["null_resource.py_3_build"]
  count      = "${local.lambda_py_3_count}"
}

resource "null_resource" "py_4_build" {
  provisioner "local-exec" {
    command     = "${local.lambda_4_vendor_cmd != "" ? "${local.lambda_4_vendor_cmd} && " : ""}${local.lambda_4_test_cmd != "" ? "${local.lambda_4_test_cmd} && " : ""}echo 'py 4 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_4_file))}"
    lambda_py_runtime     = "${local.lambda_py_4_runtime}"
    lambda_py_name        = "${local.lambda_py_4_name}"
    lambda_py_handler     = "${local.lambda_py_4_handler}"
    lambda_py_source_file = "${local.lambda_py_4_source_file}"
    lambda_py_zip         = "${local.lambda_py_4_zip}"
    rebuild               = "${local.lambda_4_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_py_4_count}"
}

data "archive_file" "lambda_py_4" {
  type        = "zip"
  source_file = "${local.lambda_py_4_source_file}"
  output_path = "${local.lambda_py_4_zip}"

  depends_on = ["null_resource.py_4_build"]
  count      = "${local.lambda_py_4_count}"
}

resource "null_resource" "py_5_build" {
  provisioner "local-exec" {
    command     = "${local.lambda_5_vendor_cmd != "" ? "${local.lambda_5_vendor_cmd} && " : ""}${local.lambda_5_test_cmd != "" ? "${local.lambda_5_test_cmd} && " : ""}echo 'py 5 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_5_file))}"
    lambda_py_runtime     = "${local.lambda_py_5_runtime}"
    lambda_py_name        = "${local.lambda_py_5_name}"
    lambda_py_handler     = "${local.lambda_py_5_handler}"
    lambda_py_source_file = "${local.lambda_py_5_source_file}"
    lambda_py_zip         = "${local.lambda_py_5_zip}"
    rebuild               = "${local.lambda_5_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_py_5_count}"
}

data "archive_file" "lambda_py_5" {
  type        = "zip"
  source_file = "${local.lambda_py_5_source_file}"
  output_path = "${local.lambda_py_5_zip}"

  depends_on = ["null_resource.py_5_build"]
  count      = "${local.lambda_py_5_count}"
}

resource "null_resource" "py_6_build" {
  provisioner "local-exec" {
    command     = "${local.lambda_6_vendor_cmd != "" ? "${local.lambda_6_vendor_cmd} && " : ""}${local.lambda_6_test_cmd != "" ? "${local.lambda_6_test_cmd} && " : ""}echo 'py 6 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_6_file))}"
    lambda_py_runtime     = "${local.lambda_py_6_runtime}"
    lambda_py_name        = "${local.lambda_py_6_name}"
    lambda_py_handler     = "${local.lambda_py_6_handler}"
    lambda_py_source_file = "${local.lambda_py_6_source_file}"
    lambda_py_zip         = "${local.lambda_py_6_zip}"
    rebuild               = "${local.lambda_6_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_py_6_count}"
}

data "archive_file" "lambda_py_6" {
  type        = "zip"
  source_file = "${local.lambda_py_6_source_file}"
  output_path = "${local.lambda_py_6_zip}"

  depends_on = ["null_resource.py_6_build"]
  count      = "${local.lambda_py_6_count}"
}

resource "null_resource" "py_7_build" {
  provisioner "local-exec" {
    command     = "${local.lambda_7_vendor_cmd != "" ? "${local.lambda_7_vendor_cmd} && " : ""}${local.lambda_7_test_cmd != "" ? "${local.lambda_7_test_cmd} && " : ""}echo 'py 7 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_7_file))}"
    lambda_py_runtime     = "${local.lambda_py_7_runtime}"
    lambda_py_name        = "${local.lambda_py_7_name}"
    lambda_py_handler     = "${local.lambda_py_7_handler}"
    lambda_py_source_file = "${local.lambda_py_7_source_file}"
    lambda_py_zip         = "${local.lambda_py_7_zip}"
    rebuild               = "${local.lambda_7_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_py_7_count}"
}

data "archive_file" "lambda_py_7" {
  type        = "zip"
  source_file = "${local.lambda_py_7_source_file}"
  output_path = "${local.lambda_py_7_zip}"

  depends_on = ["null_resource.py_7_build"]
  count      = "${local.lambda_py_7_count}"
}

resource "null_resource" "py_8_build" {
  provisioner "local-exec" {
    command     = "${local.lambda_8_vendor_cmd != "" ? "${local.lambda_8_vendor_cmd} && " : ""}${local.lambda_8_test_cmd != "" ? "${local.lambda_8_test_cmd} && " : ""}echo 'py 8 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_8_file))}"
    lambda_py_runtime     = "${local.lambda_py_8_runtime}"
    lambda_py_name        = "${local.lambda_py_8_name}"
    lambda_py_handler     = "${local.lambda_py_8_handler}"
    lambda_py_source_file = "${local.lambda_py_8_source_file}"
    lambda_py_zip         = "${local.lambda_py_8_zip}"
    rebuild               = "${local.lambda_8_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_py_8_count}"
}

data "archive_file" "lambda_py_8" {
  type        = "zip"
  source_file = "${local.lambda_py_8_source_file}"
  output_path = "${local.lambda_py_8_zip}"

  depends_on = ["null_resource.py_8_build"]
  count      = "${local.lambda_py_8_count}"
}

resource "null_resource" "py_9_build" {
  provisioner "local-exec" {
    command     = "${local.lambda_9_vendor_cmd != "" ? "${local.lambda_9_vendor_cmd} && " : ""}${local.lambda_9_test_cmd != "" ? "${local.lambda_9_test_cmd} && " : ""}echo 'py 9 build'"
    interpreter = ["/bin/bash", "-c"]
  }

  triggers {
    b64sha                = "${base64sha256(file(local.lambda_9_file))}"
    lambda_py_runtime     = "${local.lambda_py_9_runtime}"
    lambda_py_name        = "${local.lambda_py_9_name}"
    lambda_py_handler     = "${local.lambda_py_9_handler}"
    lambda_py_source_file = "${local.lambda_py_9_source_file}"
    lambda_py_zip         = "${local.lambda_py_9_zip}"
    rebuild               = "${local.lambda_9_rebuild ? timestamp() : local.default_rebuild}"
  }

  depends_on = ["null_resource.validator"]
  count      = "${local.lambda_py_9_count}"
}

data "archive_file" "lambda_py_9" {
  type        = "zip"
  source_file = "${local.lambda_py_9_source_file}"
  output_path = "${local.lambda_py_9_zip}"

  depends_on = ["null_resource.py_9_build"]
  count      = "${local.lambda_py_9_count}"
}
