// GENERATED FILE: DO NOT EDIT

locals {
  // Variable setup
  path_root_list = "${split("/", path.root)}"
  path_root_len  = "${length(local.path_root_list)}"
  parent_dir     = "${element(local.path_root_list, local.path_root_len - 1)}"
  service_name   = "${var.service != "" ? var.service : local.parent_dir}"

  functions_length = "${length(var.functions)}"
  zeros            = [{k=""},{k=""},{k=""},{k=""},{k=""},{k=""},{k=""},{k=""},{k=""},{k=""}]
  functions        = "${concat(var.functions, local.zeros)}"
}

// locals for lambda_0
locals {
  lambda_0 = "${local.functions[0]}"

  // Vars
  lambda_0_file       = "${lookup(local.lambda_0, "file", "")}"
  lambda_0_count      = "${local.lambda_0_file != "" ? 1 : 0}"
  lambda_0_vendor_cmd = "${lookup(local.lambda_0, "vendor_cmd", "")}"
  lambda_0_test_cmd   = "${lookup(local.lambda_0, "test_cmd", "")}"
  lambda_0_timeout    = "${lookup(local.lambda_0, "timeout", "5")}"
  lambda_0_env_vars   = "${lookup(local.lambda_0, "env_vars", "")}"
  lambda_0_name       = "${lookup(local.lambda_0, "name", "")}"
  lambda_0_runtime    = "${lookup(local.lambda_0, "runtime", "")}"
  lambda_0_handler    = "${lookup(local.lambda_0, "handler", "")}"

  // Lambda for Golang
  lambda_go_0         = "${contains(split(".", local.lambda_0_file), "go")}"
  lambda_go_0_count   = "${local.lambda_go_0 ? 1 : 0}"
  lambda_go_0_name    = "${local.lambda_go_0 && local.lambda_0_name    != "" ? "${local.service_name}-${local.api_gateway_0_stage}-${local.lambda_0_name}" : "${local.service_name}-${local.api_gateway_0_stage}-${replace(local.lambda_0_file, ".go", "")}-0" }" //"
  lambda_go_0_runtime = "${local.lambda_go_0 && local.lambda_0_runtime != "" ? local.lambda_0_runtime : "go1.x" }"
  lambda_go_0_handler = "${local.lambda_go_0 && local.lambda_0_handler != "" ? local.lambda_0_handler : local.lambda_go_0_name}"
  lambda_go_0_bin     = "${path.root}/bin/${local.lambda_go_0_name}"
  lambda_go_0_zip     = "${local.lambda_go_0 ? "${path.root}/.terraform/archive_files/${local.lambda_go_0_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_0             = "${contains(split(".", local.lambda_0_file), "py")}"
  lambda_py_0_count       = "${local.lambda_py_0 ? 1 : 0}"
  lambda_py_0_name        = "${local.lambda_py_0 && local.lambda_0_name != "" ? "${local.service_name}-${local.api_gateway_0_stage}-${local.lambda_0_name}" : "${local.service_name}-${local.api_gateway_0_stage}-${replace(local.lambda_0_file, ".py", "")}-0" }" //"
  lambda_py_0_runtime     = "${local.lambda_py_0 && local.lambda_0_runtime != "" ? local.lambda_0_runtime : "python3.6" }"
  lambda_py_0_handler     = "${local.lambda_py_0 && local.lambda_0_handler != "" ? local.lambda_0_handler : "${local.lambda_py_0_name}.handler" }" //"
  lambda_py_0_source_file = "${local.lambda_py_0 ? local.lambda_0_file : ""}"
  lambda_py_0_zip         = "${local.lambda_py_0 ? "${path.root}/.terraform/archive_files/${local.lambda_py_0_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_0             = "${contains(split(".", local.lambda_0_file), "js")}"
  lambda_js_0_count       = "${local.lambda_js_0 ? 1 : 0}"
  lambda_js_0_name        = "${local.lambda_js_0 && local.lambda_0_name != "" ? "${local.service_name}-${local.api_gateway_0_stage}-${local.lambda_0_name}" : "${local.service_name}-${local.api_gateway_0_stage}-${replace(local.lambda_0_file, ".js", "")}-0" }" //"
  lambda_js_0_runtime     = "${local.lambda_js_0 && local.lambda_0_runtime != "" ? local.lambda_0_runtime : "nodejs8.10" }"
  lambda_js_0_handler     = "${local.lambda_js_0 && local.lambda_0_handler != "" ? local.lambda_0_handler : "${local.lambda_js_0_name}.handler" }" //"
  lambda_js_0_source_file = "${local.lambda_js_0 ? local.lambda_0_file : ""}"
  lambda_js_0_zip         = "${local.lambda_js_0 ? "${path.root}/.terraform/archive_files/${local.lambda_js_0_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_0_name_computed = "${local.lambda_0_name != "" ? local.lambda_0_name : (local.lambda_go_0 ? local.lambda_go_0_name : (local.lambda_py_0 ? local.lambda_py_0_name : (local.lambda_js_0 ? local.lambda_js_0_name : "${local.service_name}-ez-lambda" ))) }" //"

  // API Gateway
  api_gateway_0               = "${lookup(local.lambda_0, "http", "" ) != "" || lookup(local.lambda_0, "http_path", "") != "" || lookup(local.lambda_0, "http_method", "") != "" || lookup(local.lambda_0, "http_authorization", "") != "" || lookup(local.lambda_0, "http_stage", "") != ""}"
  api_gateway_0_count         = "${local.api_gateway_0 ? 1 : 0}"
  api_gateway_0_name          = "${local.lambda_0_name_computed}"
  api_gateway_0_path          = "${lookup(local.lambda_0, "http_path", local.lambda_0_name_computed)}"
  api_gateway_0_method        = "${upper(lookup(local.lambda_0, "http_method", "get"))}"
  api_gateway_0_stage         = "${lookup(local.lambda_0, "http_stage", "prod")}"
  api_gateway_0_authorization = "${lookup(local.lambda_0, "http_authorization", "NONE")}"
  api_gateway_0_metrics       = "${lookup(local.lambda_0, "http_metrics", "") != ""}"
  api_gateway_0_logging       = "${lookup(local.lambda_0, "http_logging", "") != ""}"
  api_gateway_0_logging_level = "${local.api_gateway_0_logging ? "INFO" : "OFF"}"

  // Cloudwatch Schedule
  cloudwatch_0       = "${lookup(local.lambda_0, "schedule", "" ) != "" || lookup(local.lambda_0, "schedule_rate", "") != ""}"
  cloudwatch_0_count = "${local.cloudwatch_0 ? 1 : 0}"
  cloudwatch_0_name  = "${local.lambda_0_name_computed}"
  cloudwatch_0_rate  = "${lookup(local.lambda_0, "schedule_rate", "rate(1 hour)")}"
}

// locals for lambda_1
locals {
  lambda_1 = "${local.functions[1]}"

  // Vars
  lambda_1_file       = "${lookup(local.lambda_1, "file", "")}"
  lambda_1_count      = "${local.lambda_1_file != "" ? 1 : 0}"
  lambda_1_vendor_cmd = "${lookup(local.lambda_1, "vendor_cmd", "")}"
  lambda_1_test_cmd   = "${lookup(local.lambda_1, "test_cmd", "")}"
  lambda_1_timeout    = "${lookup(local.lambda_1, "timeout", "5")}"
  lambda_1_env_vars   = "${lookup(local.lambda_1, "env_vars", "")}"
  lambda_1_name       = "${lookup(local.lambda_1, "name", "")}"
  lambda_1_runtime    = "${lookup(local.lambda_1, "runtime", "")}"
  lambda_1_handler    = "${lookup(local.lambda_1, "handler", "")}"

  // Lambda for Golang
  lambda_go_1         = "${contains(split(".", local.lambda_1_file), "go")}"
  lambda_go_1_count   = "${local.lambda_go_1 ? 1 : 0}"
  lambda_go_1_name    = "${local.lambda_go_1 && local.lambda_1_name    != "" ? "${local.service_name}-${local.api_gateway_1_stage}-${local.lambda_1_name}" : "${local.service_name}-${local.api_gateway_1_stage}-${replace(local.lambda_1_file, ".go", "")}-1" }" //"
  lambda_go_1_runtime = "${local.lambda_go_1 && local.lambda_1_runtime != "" ? local.lambda_1_runtime : "go1.x" }"
  lambda_go_1_handler = "${local.lambda_go_1 && local.lambda_1_handler != "" ? local.lambda_1_handler : local.lambda_go_1_name}"
  lambda_go_1_bin     = "${path.root}/bin/${local.lambda_go_1_name}"
  lambda_go_1_zip     = "${local.lambda_go_1 ? "${path.root}/.terraform/archive_files/${local.lambda_go_1_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_1             = "${contains(split(".", local.lambda_1_file), "py")}"
  lambda_py_1_count       = "${local.lambda_py_1 ? 1 : 0}"
  lambda_py_1_name        = "${local.lambda_py_1 && local.lambda_1_name != "" ? "${local.service_name}-${local.api_gateway_1_stage}-${local.lambda_1_name}" : "${local.service_name}-${local.api_gateway_1_stage}-${replace(local.lambda_1_file, ".py", "")}-1" }" //"
  lambda_py_1_runtime     = "${local.lambda_py_1 && local.lambda_1_runtime != "" ? local.lambda_1_runtime : "python3.6" }"
  lambda_py_1_handler     = "${local.lambda_py_1 && local.lambda_1_handler != "" ? local.lambda_1_handler : "${local.lambda_py_1_name}.handler" }" //"
  lambda_py_1_source_file = "${local.lambda_py_1 ? local.lambda_1_file : ""}"
  lambda_py_1_zip         = "${local.lambda_py_1 ? "${path.root}/.terraform/archive_files/${local.lambda_py_1_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_1             = "${contains(split(".", local.lambda_1_file), "js")}"
  lambda_js_1_count       = "${local.lambda_js_1 ? 1 : 0}"
  lambda_js_1_name        = "${local.lambda_js_1 && local.lambda_1_name != "" ? "${local.service_name}-${local.api_gateway_1_stage}-${local.lambda_1_name}" : "${local.service_name}-${local.api_gateway_1_stage}-${replace(local.lambda_1_file, ".js", "")}-1" }" //"
  lambda_js_1_runtime     = "${local.lambda_js_1 && local.lambda_1_runtime != "" ? local.lambda_1_runtime : "nodejs8.10" }"
  lambda_js_1_handler     = "${local.lambda_js_1 && local.lambda_1_handler != "" ? local.lambda_1_handler : "${local.lambda_js_1_name}.handler" }" //"
  lambda_js_1_source_file = "${local.lambda_js_1 ? local.lambda_1_file : ""}"
  lambda_js_1_zip         = "${local.lambda_js_1 ? "${path.root}/.terraform/archive_files/${local.lambda_js_1_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_1_name_computed = "${local.lambda_1_name != "" ? local.lambda_1_name : (local.lambda_go_1 ? local.lambda_go_1_name : (local.lambda_py_1 ? local.lambda_py_1_name : (local.lambda_js_1 ? local.lambda_js_1_name : "${local.service_name}-ez-lambda" ))) }" //"

  // API Gateway
  api_gateway_1               = "${lookup(local.lambda_1, "http", "" ) != "" || lookup(local.lambda_1, "http_path", "") != "" || lookup(local.lambda_1, "http_method", "") != "" || lookup(local.lambda_1, "http_authorization", "") != "" || lookup(local.lambda_1, "http_stage", "") != ""}"
  api_gateway_1_count         = "${local.api_gateway_1 ? 1 : 0}"
  api_gateway_1_name          = "${local.lambda_1_name_computed}"
  api_gateway_1_path          = "${lookup(local.lambda_1, "http_path", local.lambda_1_name_computed)}"
  api_gateway_1_method        = "${upper(lookup(local.lambda_1, "http_method", "get"))}"
  api_gateway_1_stage         = "${lookup(local.lambda_1, "http_stage", "prod")}"
  api_gateway_1_authorization = "${lookup(local.lambda_1, "http_authorization", "NONE")}"
  api_gateway_1_metrics       = "${lookup(local.lambda_1, "http_metrics", "") != ""}"
  api_gateway_1_logging       = "${lookup(local.lambda_1, "http_logging", "") != ""}"
  api_gateway_1_logging_level = "${local.api_gateway_1_logging ? "INFO" : "OFF"}"

  // Cloudwatch Schedule
  cloudwatch_1       = "${lookup(local.lambda_1, "schedule", "" ) != "" || lookup(local.lambda_1, "schedule_rate", "") != ""}"
  cloudwatch_1_count = "${local.cloudwatch_1 ? 1 : 0}"
  cloudwatch_1_name  = "${local.lambda_1_name_computed}"
  cloudwatch_1_rate  = "${lookup(local.lambda_1, "schedule_rate", "rate(1 hour)")}"
}

// locals for lambda_2
locals {
  lambda_2 = "${local.functions[2]}"

  // Vars
  lambda_2_file       = "${lookup(local.lambda_2, "file", "")}"
  lambda_2_count      = "${local.lambda_2_file != "" ? 1 : 0}"
  lambda_2_vendor_cmd = "${lookup(local.lambda_2, "vendor_cmd", "")}"
  lambda_2_test_cmd   = "${lookup(local.lambda_2, "test_cmd", "")}"
  lambda_2_timeout    = "${lookup(local.lambda_2, "timeout", "5")}"
  lambda_2_env_vars   = "${lookup(local.lambda_2, "env_vars", "")}"
  lambda_2_name       = "${lookup(local.lambda_2, "name", "")}"
  lambda_2_runtime    = "${lookup(local.lambda_2, "runtime", "")}"
  lambda_2_handler    = "${lookup(local.lambda_2, "handler", "")}"

  // Lambda for Golang
  lambda_go_2         = "${contains(split(".", local.lambda_2_file), "go")}"
  lambda_go_2_count   = "${local.lambda_go_2 ? 1 : 0}"
  lambda_go_2_name    = "${local.lambda_go_2 && local.lambda_2_name    != "" ? "${local.service_name}-${local.api_gateway_2_stage}-${local.lambda_2_name}" : "${local.service_name}-${local.api_gateway_2_stage}-${replace(local.lambda_2_file, ".go", "")}-2" }" //"
  lambda_go_2_runtime = "${local.lambda_go_2 && local.lambda_2_runtime != "" ? local.lambda_2_runtime : "go1.x" }"
  lambda_go_2_handler = "${local.lambda_go_2 && local.lambda_2_handler != "" ? local.lambda_2_handler : local.lambda_go_2_name}"
  lambda_go_2_bin     = "${path.root}/bin/${local.lambda_go_2_name}"
  lambda_go_2_zip     = "${local.lambda_go_2 ? "${path.root}/.terraform/archive_files/${local.lambda_go_2_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_2             = "${contains(split(".", local.lambda_2_file), "py")}"
  lambda_py_2_count       = "${local.lambda_py_2 ? 1 : 0}"
  lambda_py_2_name        = "${local.lambda_py_2 && local.lambda_2_name != "" ? "${local.service_name}-${local.api_gateway_2_stage}-${local.lambda_2_name}" : "${local.service_name}-${local.api_gateway_2_stage}-${replace(local.lambda_2_file, ".py", "")}-2" }" //"
  lambda_py_2_runtime     = "${local.lambda_py_2 && local.lambda_2_runtime != "" ? local.lambda_2_runtime : "python3.6" }"
  lambda_py_2_handler     = "${local.lambda_py_2 && local.lambda_2_handler != "" ? local.lambda_2_handler : "${local.lambda_py_2_name}.handler" }" //"
  lambda_py_2_source_file = "${local.lambda_py_2 ? local.lambda_2_file : ""}"
  lambda_py_2_zip         = "${local.lambda_py_2 ? "${path.root}/.terraform/archive_files/${local.lambda_py_2_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_2             = "${contains(split(".", local.lambda_2_file), "js")}"
  lambda_js_2_count       = "${local.lambda_js_2 ? 1 : 0}"
  lambda_js_2_name        = "${local.lambda_js_2 && local.lambda_2_name != "" ? "${local.service_name}-${local.api_gateway_2_stage}-${local.lambda_2_name}" : "${local.service_name}-${local.api_gateway_2_stage}-${replace(local.lambda_2_file, ".js", "")}-2" }" //"
  lambda_js_2_runtime     = "${local.lambda_js_2 && local.lambda_2_runtime != "" ? local.lambda_2_runtime : "nodejs8.10" }"
  lambda_js_2_handler     = "${local.lambda_js_2 && local.lambda_2_handler != "" ? local.lambda_2_handler : "${local.lambda_js_2_name}.handler" }" //"
  lambda_js_2_source_file = "${local.lambda_js_2 ? local.lambda_2_file : ""}"
  lambda_js_2_zip         = "${local.lambda_js_2 ? "${path.root}/.terraform/archive_files/${local.lambda_js_2_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_2_name_computed = "${local.lambda_2_name != "" ? local.lambda_2_name : (local.lambda_go_2 ? local.lambda_go_2_name : (local.lambda_py_2 ? local.lambda_py_2_name : (local.lambda_js_2 ? local.lambda_js_2_name : "${local.service_name}-ez-lambda" ))) }" //"

  // API Gateway
  api_gateway_2               = "${lookup(local.lambda_2, "http", "" ) != "" || lookup(local.lambda_2, "http_path", "") != "" || lookup(local.lambda_2, "http_method", "") != "" || lookup(local.lambda_2, "http_authorization", "") != "" || lookup(local.lambda_2, "http_stage", "") != ""}"
  api_gateway_2_count         = "${local.api_gateway_2 ? 1 : 0}"
  api_gateway_2_name          = "${local.lambda_2_name_computed}"
  api_gateway_2_path          = "${lookup(local.lambda_2, "http_path", local.lambda_2_name_computed)}"
  api_gateway_2_method        = "${upper(lookup(local.lambda_2, "http_method", "get"))}"
  api_gateway_2_stage         = "${lookup(local.lambda_2, "http_stage", "prod")}"
  api_gateway_2_authorization = "${lookup(local.lambda_2, "http_authorization", "NONE")}"
  api_gateway_2_metrics       = "${lookup(local.lambda_2, "http_metrics", "") != ""}"
  api_gateway_2_logging       = "${lookup(local.lambda_2, "http_logging", "") != ""}"
  api_gateway_2_logging_level = "${local.api_gateway_2_logging ? "INFO" : "OFF"}"

  // Cloudwatch Schedule
  cloudwatch_2       = "${lookup(local.lambda_2, "schedule", "" ) != "" || lookup(local.lambda_2, "schedule_rate", "") != ""}"
  cloudwatch_2_count = "${local.cloudwatch_2 ? 1 : 0}"
  cloudwatch_2_name  = "${local.lambda_2_name_computed}"
  cloudwatch_2_rate  = "${lookup(local.lambda_2, "schedule_rate", "rate(1 hour)")}"
}

// locals for lambda_3
locals {
  lambda_3 = "${local.functions[3]}"

  // Vars
  lambda_3_file       = "${lookup(local.lambda_3, "file", "")}"
  lambda_3_count      = "${local.lambda_3_file != "" ? 1 : 0}"
  lambda_3_vendor_cmd = "${lookup(local.lambda_3, "vendor_cmd", "")}"
  lambda_3_test_cmd   = "${lookup(local.lambda_3, "test_cmd", "")}"
  lambda_3_timeout    = "${lookup(local.lambda_3, "timeout", "5")}"
  lambda_3_env_vars   = "${lookup(local.lambda_3, "env_vars", "")}"
  lambda_3_name       = "${lookup(local.lambda_3, "name", "")}"
  lambda_3_runtime    = "${lookup(local.lambda_3, "runtime", "")}"
  lambda_3_handler    = "${lookup(local.lambda_3, "handler", "")}"

  // Lambda for Golang
  lambda_go_3         = "${contains(split(".", local.lambda_3_file), "go")}"
  lambda_go_3_count   = "${local.lambda_go_3 ? 1 : 0}"
  lambda_go_3_name    = "${local.lambda_go_3 && local.lambda_3_name    != "" ? "${local.service_name}-${local.api_gateway_3_stage}-${local.lambda_3_name}" : "${local.service_name}-${local.api_gateway_3_stage}-${replace(local.lambda_3_file, ".go", "")}-3" }" //"
  lambda_go_3_runtime = "${local.lambda_go_3 && local.lambda_3_runtime != "" ? local.lambda_3_runtime : "go1.x" }"
  lambda_go_3_handler = "${local.lambda_go_3 && local.lambda_3_handler != "" ? local.lambda_3_handler : local.lambda_go_3_name}"
  lambda_go_3_bin     = "${path.root}/bin/${local.lambda_go_3_name}"
  lambda_go_3_zip     = "${local.lambda_go_3 ? "${path.root}/.terraform/archive_files/${local.lambda_go_3_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_3             = "${contains(split(".", local.lambda_3_file), "py")}"
  lambda_py_3_count       = "${local.lambda_py_3 ? 1 : 0}"
  lambda_py_3_name        = "${local.lambda_py_3 && local.lambda_3_name != "" ? "${local.service_name}-${local.api_gateway_3_stage}-${local.lambda_3_name}" : "${local.service_name}-${local.api_gateway_3_stage}-${replace(local.lambda_3_file, ".py", "")}-3" }" //"
  lambda_py_3_runtime     = "${local.lambda_py_3 && local.lambda_3_runtime != "" ? local.lambda_3_runtime : "python3.6" }"
  lambda_py_3_handler     = "${local.lambda_py_3 && local.lambda_3_handler != "" ? local.lambda_3_handler : "${local.lambda_py_3_name}.handler" }" //"
  lambda_py_3_source_file = "${local.lambda_py_3 ? local.lambda_3_file : ""}"
  lambda_py_3_zip         = "${local.lambda_py_3 ? "${path.root}/.terraform/archive_files/${local.lambda_py_3_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_3             = "${contains(split(".", local.lambda_3_file), "js")}"
  lambda_js_3_count       = "${local.lambda_js_3 ? 1 : 0}"
  lambda_js_3_name        = "${local.lambda_js_3 && local.lambda_3_name != "" ? "${local.service_name}-${local.api_gateway_3_stage}-${local.lambda_3_name}" : "${local.service_name}-${local.api_gateway_3_stage}-${replace(local.lambda_3_file, ".js", "")}-3" }" //"
  lambda_js_3_runtime     = "${local.lambda_js_3 && local.lambda_3_runtime != "" ? local.lambda_3_runtime : "nodejs8.10" }"
  lambda_js_3_handler     = "${local.lambda_js_3 && local.lambda_3_handler != "" ? local.lambda_3_handler : "${local.lambda_js_3_name}.handler" }" //"
  lambda_js_3_source_file = "${local.lambda_js_3 ? local.lambda_3_file : ""}"
  lambda_js_3_zip         = "${local.lambda_js_3 ? "${path.root}/.terraform/archive_files/${local.lambda_js_3_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_3_name_computed = "${local.lambda_3_name != "" ? local.lambda_3_name : (local.lambda_go_3 ? local.lambda_go_3_name : (local.lambda_py_3 ? local.lambda_py_3_name : (local.lambda_js_3 ? local.lambda_js_3_name : "${local.service_name}-ez-lambda" ))) }" //"

  // API Gateway
  api_gateway_3               = "${lookup(local.lambda_3, "http", "" ) != "" || lookup(local.lambda_3, "http_path", "") != "" || lookup(local.lambda_3, "http_method", "") != "" || lookup(local.lambda_3, "http_authorization", "") != "" || lookup(local.lambda_3, "http_stage", "") != ""}"
  api_gateway_3_count         = "${local.api_gateway_3 ? 1 : 0}"
  api_gateway_3_name          = "${local.lambda_3_name_computed}"
  api_gateway_3_path          = "${lookup(local.lambda_3, "http_path", local.lambda_3_name_computed)}"
  api_gateway_3_method        = "${upper(lookup(local.lambda_3, "http_method", "get"))}"
  api_gateway_3_stage         = "${lookup(local.lambda_3, "http_stage", "prod")}"
  api_gateway_3_authorization = "${lookup(local.lambda_3, "http_authorization", "NONE")}"
  api_gateway_3_metrics       = "${lookup(local.lambda_3, "http_metrics", "") != ""}"
  api_gateway_3_logging       = "${lookup(local.lambda_3, "http_logging", "") != ""}"
  api_gateway_3_logging_level = "${local.api_gateway_3_logging ? "INFO" : "OFF"}"

  // Cloudwatch Schedule
  cloudwatch_3       = "${lookup(local.lambda_3, "schedule", "" ) != "" || lookup(local.lambda_3, "schedule_rate", "") != ""}"
  cloudwatch_3_count = "${local.cloudwatch_3 ? 1 : 0}"
  cloudwatch_3_name  = "${local.lambda_3_name_computed}"
  cloudwatch_3_rate  = "${lookup(local.lambda_3, "schedule_rate", "rate(1 hour)")}"
}

// locals for lambda_4
locals {
  lambda_4 = "${local.functions[4]}"

  // Vars
  lambda_4_file       = "${lookup(local.lambda_4, "file", "")}"
  lambda_4_count      = "${local.lambda_4_file != "" ? 1 : 0}"
  lambda_4_vendor_cmd = "${lookup(local.lambda_4, "vendor_cmd", "")}"
  lambda_4_test_cmd   = "${lookup(local.lambda_4, "test_cmd", "")}"
  lambda_4_timeout    = "${lookup(local.lambda_4, "timeout", "5")}"
  lambda_4_env_vars   = "${lookup(local.lambda_4, "env_vars", "")}"
  lambda_4_name       = "${lookup(local.lambda_4, "name", "")}"
  lambda_4_runtime    = "${lookup(local.lambda_4, "runtime", "")}"
  lambda_4_handler    = "${lookup(local.lambda_4, "handler", "")}"

  // Lambda for Golang
  lambda_go_4         = "${contains(split(".", local.lambda_4_file), "go")}"
  lambda_go_4_count   = "${local.lambda_go_4 ? 1 : 0}"
  lambda_go_4_name    = "${local.lambda_go_4 && local.lambda_4_name    != "" ? "${local.service_name}-${local.api_gateway_4_stage}-${local.lambda_4_name}" : "${local.service_name}-${local.api_gateway_4_stage}-${replace(local.lambda_4_file, ".go", "")}-4" }" //"
  lambda_go_4_runtime = "${local.lambda_go_4 && local.lambda_4_runtime != "" ? local.lambda_4_runtime : "go1.x" }"
  lambda_go_4_handler = "${local.lambda_go_4 && local.lambda_4_handler != "" ? local.lambda_4_handler : local.lambda_go_4_name}"
  lambda_go_4_bin     = "${path.root}/bin/${local.lambda_go_4_name}"
  lambda_go_4_zip     = "${local.lambda_go_4 ? "${path.root}/.terraform/archive_files/${local.lambda_go_4_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_4             = "${contains(split(".", local.lambda_4_file), "py")}"
  lambda_py_4_count       = "${local.lambda_py_4 ? 1 : 0}"
  lambda_py_4_name        = "${local.lambda_py_4 && local.lambda_4_name != "" ? "${local.service_name}-${local.api_gateway_4_stage}-${local.lambda_4_name}" : "${local.service_name}-${local.api_gateway_4_stage}-${replace(local.lambda_4_file, ".py", "")}-4" }" //"
  lambda_py_4_runtime     = "${local.lambda_py_4 && local.lambda_4_runtime != "" ? local.lambda_4_runtime : "python3.6" }"
  lambda_py_4_handler     = "${local.lambda_py_4 && local.lambda_4_handler != "" ? local.lambda_4_handler : "${local.lambda_py_4_name}.handler" }" //"
  lambda_py_4_source_file = "${local.lambda_py_4 ? local.lambda_4_file : ""}"
  lambda_py_4_zip         = "${local.lambda_py_4 ? "${path.root}/.terraform/archive_files/${local.lambda_py_4_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_4             = "${contains(split(".", local.lambda_4_file), "js")}"
  lambda_js_4_count       = "${local.lambda_js_4 ? 1 : 0}"
  lambda_js_4_name        = "${local.lambda_js_4 && local.lambda_4_name != "" ? "${local.service_name}-${local.api_gateway_4_stage}-${local.lambda_4_name}" : "${local.service_name}-${local.api_gateway_4_stage}-${replace(local.lambda_4_file, ".js", "")}-4" }" //"
  lambda_js_4_runtime     = "${local.lambda_js_4 && local.lambda_4_runtime != "" ? local.lambda_4_runtime : "nodejs8.10" }"
  lambda_js_4_handler     = "${local.lambda_js_4 && local.lambda_4_handler != "" ? local.lambda_4_handler : "${local.lambda_js_4_name}.handler" }" //"
  lambda_js_4_source_file = "${local.lambda_js_4 ? local.lambda_4_file : ""}"
  lambda_js_4_zip         = "${local.lambda_js_4 ? "${path.root}/.terraform/archive_files/${local.lambda_js_4_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_4_name_computed = "${local.lambda_4_name != "" ? local.lambda_4_name : (local.lambda_go_4 ? local.lambda_go_4_name : (local.lambda_py_4 ? local.lambda_py_4_name : (local.lambda_js_4 ? local.lambda_js_4_name : "${local.service_name}-ez-lambda" ))) }" //"

  // API Gateway
  api_gateway_4               = "${lookup(local.lambda_4, "http", "" ) != "" || lookup(local.lambda_4, "http_path", "") != "" || lookup(local.lambda_4, "http_method", "") != "" || lookup(local.lambda_4, "http_authorization", "") != "" || lookup(local.lambda_4, "http_stage", "") != ""}"
  api_gateway_4_count         = "${local.api_gateway_4 ? 1 : 0}"
  api_gateway_4_name          = "${local.lambda_4_name_computed}"
  api_gateway_4_path          = "${lookup(local.lambda_4, "http_path", local.lambda_4_name_computed)}"
  api_gateway_4_method        = "${upper(lookup(local.lambda_4, "http_method", "get"))}"
  api_gateway_4_stage         = "${lookup(local.lambda_4, "http_stage", "prod")}"
  api_gateway_4_authorization = "${lookup(local.lambda_4, "http_authorization", "NONE")}"
  api_gateway_4_metrics       = "${lookup(local.lambda_4, "http_metrics", "") != ""}"
  api_gateway_4_logging       = "${lookup(local.lambda_4, "http_logging", "") != ""}"
  api_gateway_4_logging_level = "${local.api_gateway_4_logging ? "INFO" : "OFF"}"

  // Cloudwatch Schedule
  cloudwatch_4       = "${lookup(local.lambda_4, "schedule", "" ) != "" || lookup(local.lambda_4, "schedule_rate", "") != ""}"
  cloudwatch_4_count = "${local.cloudwatch_4 ? 1 : 0}"
  cloudwatch_4_name  = "${local.lambda_4_name_computed}"
  cloudwatch_4_rate  = "${lookup(local.lambda_4, "schedule_rate", "rate(1 hour)")}"
}

// locals for lambda_5
locals {
  lambda_5 = "${local.functions[5]}"

  // Vars
  lambda_5_file       = "${lookup(local.lambda_5, "file", "")}"
  lambda_5_count      = "${local.lambda_5_file != "" ? 1 : 0}"
  lambda_5_vendor_cmd = "${lookup(local.lambda_5, "vendor_cmd", "")}"
  lambda_5_test_cmd   = "${lookup(local.lambda_5, "test_cmd", "")}"
  lambda_5_timeout    = "${lookup(local.lambda_5, "timeout", "5")}"
  lambda_5_env_vars   = "${lookup(local.lambda_5, "env_vars", "")}"
  lambda_5_name       = "${lookup(local.lambda_5, "name", "")}"
  lambda_5_runtime    = "${lookup(local.lambda_5, "runtime", "")}"
  lambda_5_handler    = "${lookup(local.lambda_5, "handler", "")}"

  // Lambda for Golang
  lambda_go_5         = "${contains(split(".", local.lambda_5_file), "go")}"
  lambda_go_5_count   = "${local.lambda_go_5 ? 1 : 0}"
  lambda_go_5_name    = "${local.lambda_go_5 && local.lambda_5_name    != "" ? "${local.service_name}-${local.api_gateway_5_stage}-${local.lambda_5_name}" : "${local.service_name}-${local.api_gateway_5_stage}-${replace(local.lambda_5_file, ".go", "")}-5" }" //"
  lambda_go_5_runtime = "${local.lambda_go_5 && local.lambda_5_runtime != "" ? local.lambda_5_runtime : "go1.x" }"
  lambda_go_5_handler = "${local.lambda_go_5 && local.lambda_5_handler != "" ? local.lambda_5_handler : local.lambda_go_5_name}"
  lambda_go_5_bin     = "${path.root}/bin/${local.lambda_go_5_name}"
  lambda_go_5_zip     = "${local.lambda_go_5 ? "${path.root}/.terraform/archive_files/${local.lambda_go_5_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_5             = "${contains(split(".", local.lambda_5_file), "py")}"
  lambda_py_5_count       = "${local.lambda_py_5 ? 1 : 0}"
  lambda_py_5_name        = "${local.lambda_py_5 && local.lambda_5_name != "" ? "${local.service_name}-${local.api_gateway_5_stage}-${local.lambda_5_name}" : "${local.service_name}-${local.api_gateway_5_stage}-${replace(local.lambda_5_file, ".py", "")}-5" }" //"
  lambda_py_5_runtime     = "${local.lambda_py_5 && local.lambda_5_runtime != "" ? local.lambda_5_runtime : "python3.6" }"
  lambda_py_5_handler     = "${local.lambda_py_5 && local.lambda_5_handler != "" ? local.lambda_5_handler : "${local.lambda_py_5_name}.handler" }" //"
  lambda_py_5_source_file = "${local.lambda_py_5 ? local.lambda_5_file : ""}"
  lambda_py_5_zip         = "${local.lambda_py_5 ? "${path.root}/.terraform/archive_files/${local.lambda_py_5_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_5             = "${contains(split(".", local.lambda_5_file), "js")}"
  lambda_js_5_count       = "${local.lambda_js_5 ? 1 : 0}"
  lambda_js_5_name        = "${local.lambda_js_5 && local.lambda_5_name != "" ? "${local.service_name}-${local.api_gateway_5_stage}-${local.lambda_5_name}" : "${local.service_name}-${local.api_gateway_5_stage}-${replace(local.lambda_5_file, ".js", "")}-5" }" //"
  lambda_js_5_runtime     = "${local.lambda_js_5 && local.lambda_5_runtime != "" ? local.lambda_5_runtime : "nodejs8.10" }"
  lambda_js_5_handler     = "${local.lambda_js_5 && local.lambda_5_handler != "" ? local.lambda_5_handler : "${local.lambda_js_5_name}.handler" }" //"
  lambda_js_5_source_file = "${local.lambda_js_5 ? local.lambda_5_file : ""}"
  lambda_js_5_zip         = "${local.lambda_js_5 ? "${path.root}/.terraform/archive_files/${local.lambda_js_5_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_5_name_computed = "${local.lambda_5_name != "" ? local.lambda_5_name : (local.lambda_go_5 ? local.lambda_go_5_name : (local.lambda_py_5 ? local.lambda_py_5_name : (local.lambda_js_5 ? local.lambda_js_5_name : "${local.service_name}-ez-lambda" ))) }" //"

  // API Gateway
  api_gateway_5               = "${lookup(local.lambda_5, "http", "" ) != "" || lookup(local.lambda_5, "http_path", "") != "" || lookup(local.lambda_5, "http_method", "") != "" || lookup(local.lambda_5, "http_authorization", "") != "" || lookup(local.lambda_5, "http_stage", "") != ""}"
  api_gateway_5_count         = "${local.api_gateway_5 ? 1 : 0}"
  api_gateway_5_name          = "${local.lambda_5_name_computed}"
  api_gateway_5_path          = "${lookup(local.lambda_5, "http_path", local.lambda_5_name_computed)}"
  api_gateway_5_method        = "${upper(lookup(local.lambda_5, "http_method", "get"))}"
  api_gateway_5_stage         = "${lookup(local.lambda_5, "http_stage", "prod")}"
  api_gateway_5_authorization = "${lookup(local.lambda_5, "http_authorization", "NONE")}"
  api_gateway_5_metrics       = "${lookup(local.lambda_5, "http_metrics", "") != ""}"
  api_gateway_5_logging       = "${lookup(local.lambda_5, "http_logging", "") != ""}"
  api_gateway_5_logging_level = "${local.api_gateway_5_logging ? "INFO" : "OFF"}"

  // Cloudwatch Schedule
  cloudwatch_5       = "${lookup(local.lambda_5, "schedule", "" ) != "" || lookup(local.lambda_5, "schedule_rate", "") != ""}"
  cloudwatch_5_count = "${local.cloudwatch_5 ? 1 : 0}"
  cloudwatch_5_name  = "${local.lambda_5_name_computed}"
  cloudwatch_5_rate  = "${lookup(local.lambda_5, "schedule_rate", "rate(1 hour)")}"
}

// locals for lambda_6
locals {
  lambda_6 = "${local.functions[6]}"

  // Vars
  lambda_6_file       = "${lookup(local.lambda_6, "file", "")}"
  lambda_6_count      = "${local.lambda_6_file != "" ? 1 : 0}"
  lambda_6_vendor_cmd = "${lookup(local.lambda_6, "vendor_cmd", "")}"
  lambda_6_test_cmd   = "${lookup(local.lambda_6, "test_cmd", "")}"
  lambda_6_timeout    = "${lookup(local.lambda_6, "timeout", "5")}"
  lambda_6_env_vars   = "${lookup(local.lambda_6, "env_vars", "")}"
  lambda_6_name       = "${lookup(local.lambda_6, "name", "")}"
  lambda_6_runtime    = "${lookup(local.lambda_6, "runtime", "")}"
  lambda_6_handler    = "${lookup(local.lambda_6, "handler", "")}"

  // Lambda for Golang
  lambda_go_6         = "${contains(split(".", local.lambda_6_file), "go")}"
  lambda_go_6_count   = "${local.lambda_go_6 ? 1 : 0}"
  lambda_go_6_name    = "${local.lambda_go_6 && local.lambda_6_name    != "" ? "${local.service_name}-${local.api_gateway_6_stage}-${local.lambda_6_name}" : "${local.service_name}-${local.api_gateway_6_stage}-${replace(local.lambda_6_file, ".go", "")}-6" }" //"
  lambda_go_6_runtime = "${local.lambda_go_6 && local.lambda_6_runtime != "" ? local.lambda_6_runtime : "go1.x" }"
  lambda_go_6_handler = "${local.lambda_go_6 && local.lambda_6_handler != "" ? local.lambda_6_handler : local.lambda_go_6_name}"
  lambda_go_6_bin     = "${path.root}/bin/${local.lambda_go_6_name}"
  lambda_go_6_zip     = "${local.lambda_go_6 ? "${path.root}/.terraform/archive_files/${local.lambda_go_6_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_6             = "${contains(split(".", local.lambda_6_file), "py")}"
  lambda_py_6_count       = "${local.lambda_py_6 ? 1 : 0}"
  lambda_py_6_name        = "${local.lambda_py_6 && local.lambda_6_name != "" ? "${local.service_name}-${local.api_gateway_6_stage}-${local.lambda_6_name}" : "${local.service_name}-${local.api_gateway_6_stage}-${replace(local.lambda_6_file, ".py", "")}-6" }" //"
  lambda_py_6_runtime     = "${local.lambda_py_6 && local.lambda_6_runtime != "" ? local.lambda_6_runtime : "python3.6" }"
  lambda_py_6_handler     = "${local.lambda_py_6 && local.lambda_6_handler != "" ? local.lambda_6_handler : "${local.lambda_py_6_name}.handler" }" //"
  lambda_py_6_source_file = "${local.lambda_py_6 ? local.lambda_6_file : ""}"
  lambda_py_6_zip         = "${local.lambda_py_6 ? "${path.root}/.terraform/archive_files/${local.lambda_py_6_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_6             = "${contains(split(".", local.lambda_6_file), "js")}"
  lambda_js_6_count       = "${local.lambda_js_6 ? 1 : 0}"
  lambda_js_6_name        = "${local.lambda_js_6 && local.lambda_6_name != "" ? "${local.service_name}-${local.api_gateway_6_stage}-${local.lambda_6_name}" : "${local.service_name}-${local.api_gateway_6_stage}-${replace(local.lambda_6_file, ".js", "")}-6" }" //"
  lambda_js_6_runtime     = "${local.lambda_js_6 && local.lambda_6_runtime != "" ? local.lambda_6_runtime : "nodejs8.10" }"
  lambda_js_6_handler     = "${local.lambda_js_6 && local.lambda_6_handler != "" ? local.lambda_6_handler : "${local.lambda_js_6_name}.handler" }" //"
  lambda_js_6_source_file = "${local.lambda_js_6 ? local.lambda_6_file : ""}"
  lambda_js_6_zip         = "${local.lambda_js_6 ? "${path.root}/.terraform/archive_files/${local.lambda_js_6_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_6_name_computed = "${local.lambda_6_name != "" ? local.lambda_6_name : (local.lambda_go_6 ? local.lambda_go_6_name : (local.lambda_py_6 ? local.lambda_py_6_name : (local.lambda_js_6 ? local.lambda_js_6_name : "${local.service_name}-ez-lambda" ))) }" //"

  // API Gateway
  api_gateway_6               = "${lookup(local.lambda_6, "http", "" ) != "" || lookup(local.lambda_6, "http_path", "") != "" || lookup(local.lambda_6, "http_method", "") != "" || lookup(local.lambda_6, "http_authorization", "") != "" || lookup(local.lambda_6, "http_stage", "") != ""}"
  api_gateway_6_count         = "${local.api_gateway_6 ? 1 : 0}"
  api_gateway_6_name          = "${local.lambda_6_name_computed}"
  api_gateway_6_path          = "${lookup(local.lambda_6, "http_path", local.lambda_6_name_computed)}"
  api_gateway_6_method        = "${upper(lookup(local.lambda_6, "http_method", "get"))}"
  api_gateway_6_stage         = "${lookup(local.lambda_6, "http_stage", "prod")}"
  api_gateway_6_authorization = "${lookup(local.lambda_6, "http_authorization", "NONE")}"
  api_gateway_6_metrics       = "${lookup(local.lambda_6, "http_metrics", "") != ""}"
  api_gateway_6_logging       = "${lookup(local.lambda_6, "http_logging", "") != ""}"
  api_gateway_6_logging_level = "${local.api_gateway_6_logging ? "INFO" : "OFF"}"

  // Cloudwatch Schedule
  cloudwatch_6       = "${lookup(local.lambda_6, "schedule", "" ) != "" || lookup(local.lambda_6, "schedule_rate", "") != ""}"
  cloudwatch_6_count = "${local.cloudwatch_6 ? 1 : 0}"
  cloudwatch_6_name  = "${local.lambda_6_name_computed}"
  cloudwatch_6_rate  = "${lookup(local.lambda_6, "schedule_rate", "rate(1 hour)")}"
}

// locals for lambda_7
locals {
  lambda_7 = "${local.functions[7]}"

  // Vars
  lambda_7_file       = "${lookup(local.lambda_7, "file", "")}"
  lambda_7_count      = "${local.lambda_7_file != "" ? 1 : 0}"
  lambda_7_vendor_cmd = "${lookup(local.lambda_7, "vendor_cmd", "")}"
  lambda_7_test_cmd   = "${lookup(local.lambda_7, "test_cmd", "")}"
  lambda_7_timeout    = "${lookup(local.lambda_7, "timeout", "5")}"
  lambda_7_env_vars   = "${lookup(local.lambda_7, "env_vars", "")}"
  lambda_7_name       = "${lookup(local.lambda_7, "name", "")}"
  lambda_7_runtime    = "${lookup(local.lambda_7, "runtime", "")}"
  lambda_7_handler    = "${lookup(local.lambda_7, "handler", "")}"

  // Lambda for Golang
  lambda_go_7         = "${contains(split(".", local.lambda_7_file), "go")}"
  lambda_go_7_count   = "${local.lambda_go_7 ? 1 : 0}"
  lambda_go_7_name    = "${local.lambda_go_7 && local.lambda_7_name    != "" ? "${local.service_name}-${local.api_gateway_7_stage}-${local.lambda_7_name}" : "${local.service_name}-${local.api_gateway_7_stage}-${replace(local.lambda_7_file, ".go", "")}-7" }" //"
  lambda_go_7_runtime = "${local.lambda_go_7 && local.lambda_7_runtime != "" ? local.lambda_7_runtime : "go1.x" }"
  lambda_go_7_handler = "${local.lambda_go_7 && local.lambda_7_handler != "" ? local.lambda_7_handler : local.lambda_go_7_name}"
  lambda_go_7_bin     = "${path.root}/bin/${local.lambda_go_7_name}"
  lambda_go_7_zip     = "${local.lambda_go_7 ? "${path.root}/.terraform/archive_files/${local.lambda_go_7_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_7             = "${contains(split(".", local.lambda_7_file), "py")}"
  lambda_py_7_count       = "${local.lambda_py_7 ? 1 : 0}"
  lambda_py_7_name        = "${local.lambda_py_7 && local.lambda_7_name != "" ? "${local.service_name}-${local.api_gateway_7_stage}-${local.lambda_7_name}" : "${local.service_name}-${local.api_gateway_7_stage}-${replace(local.lambda_7_file, ".py", "")}-7" }" //"
  lambda_py_7_runtime     = "${local.lambda_py_7 && local.lambda_7_runtime != "" ? local.lambda_7_runtime : "python3.6" }"
  lambda_py_7_handler     = "${local.lambda_py_7 && local.lambda_7_handler != "" ? local.lambda_7_handler : "${local.lambda_py_7_name}.handler" }" //"
  lambda_py_7_source_file = "${local.lambda_py_7 ? local.lambda_7_file : ""}"
  lambda_py_7_zip         = "${local.lambda_py_7 ? "${path.root}/.terraform/archive_files/${local.lambda_py_7_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_7             = "${contains(split(".", local.lambda_7_file), "js")}"
  lambda_js_7_count       = "${local.lambda_js_7 ? 1 : 0}"
  lambda_js_7_name        = "${local.lambda_js_7 && local.lambda_7_name != "" ? "${local.service_name}-${local.api_gateway_7_stage}-${local.lambda_7_name}" : "${local.service_name}-${local.api_gateway_7_stage}-${replace(local.lambda_7_file, ".js", "")}-7" }" //"
  lambda_js_7_runtime     = "${local.lambda_js_7 && local.lambda_7_runtime != "" ? local.lambda_7_runtime : "nodejs8.10" }"
  lambda_js_7_handler     = "${local.lambda_js_7 && local.lambda_7_handler != "" ? local.lambda_7_handler : "${local.lambda_js_7_name}.handler" }" //"
  lambda_js_7_source_file = "${local.lambda_js_7 ? local.lambda_7_file : ""}"
  lambda_js_7_zip         = "${local.lambda_js_7 ? "${path.root}/.terraform/archive_files/${local.lambda_js_7_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_7_name_computed = "${local.lambda_7_name != "" ? local.lambda_7_name : (local.lambda_go_7 ? local.lambda_go_7_name : (local.lambda_py_7 ? local.lambda_py_7_name : (local.lambda_js_7 ? local.lambda_js_7_name : "${local.service_name}-ez-lambda" ))) }" //"

  // API Gateway
  api_gateway_7               = "${lookup(local.lambda_7, "http", "" ) != "" || lookup(local.lambda_7, "http_path", "") != "" || lookup(local.lambda_7, "http_method", "") != "" || lookup(local.lambda_7, "http_authorization", "") != "" || lookup(local.lambda_7, "http_stage", "") != ""}"
  api_gateway_7_count         = "${local.api_gateway_7 ? 1 : 0}"
  api_gateway_7_name          = "${local.lambda_7_name_computed}"
  api_gateway_7_path          = "${lookup(local.lambda_7, "http_path", local.lambda_7_name_computed)}"
  api_gateway_7_method        = "${upper(lookup(local.lambda_7, "http_method", "get"))}"
  api_gateway_7_stage         = "${lookup(local.lambda_7, "http_stage", "prod")}"
  api_gateway_7_authorization = "${lookup(local.lambda_7, "http_authorization", "NONE")}"
  api_gateway_7_metrics       = "${lookup(local.lambda_7, "http_metrics", "") != ""}"
  api_gateway_7_logging       = "${lookup(local.lambda_7, "http_logging", "") != ""}"
  api_gateway_7_logging_level = "${local.api_gateway_7_logging ? "INFO" : "OFF"}"

  // Cloudwatch Schedule
  cloudwatch_7       = "${lookup(local.lambda_7, "schedule", "" ) != "" || lookup(local.lambda_7, "schedule_rate", "") != ""}"
  cloudwatch_7_count = "${local.cloudwatch_7 ? 1 : 0}"
  cloudwatch_7_name  = "${local.lambda_7_name_computed}"
  cloudwatch_7_rate  = "${lookup(local.lambda_7, "schedule_rate", "rate(1 hour)")}"
}

// locals for lambda_8
locals {
  lambda_8 = "${local.functions[8]}"

  // Vars
  lambda_8_file       = "${lookup(local.lambda_8, "file", "")}"
  lambda_8_count      = "${local.lambda_8_file != "" ? 1 : 0}"
  lambda_8_vendor_cmd = "${lookup(local.lambda_8, "vendor_cmd", "")}"
  lambda_8_test_cmd   = "${lookup(local.lambda_8, "test_cmd", "")}"
  lambda_8_timeout    = "${lookup(local.lambda_8, "timeout", "5")}"
  lambda_8_env_vars   = "${lookup(local.lambda_8, "env_vars", "")}"
  lambda_8_name       = "${lookup(local.lambda_8, "name", "")}"
  lambda_8_runtime    = "${lookup(local.lambda_8, "runtime", "")}"
  lambda_8_handler    = "${lookup(local.lambda_8, "handler", "")}"

  // Lambda for Golang
  lambda_go_8         = "${contains(split(".", local.lambda_8_file), "go")}"
  lambda_go_8_count   = "${local.lambda_go_8 ? 1 : 0}"
  lambda_go_8_name    = "${local.lambda_go_8 && local.lambda_8_name    != "" ? "${local.service_name}-${local.api_gateway_8_stage}-${local.lambda_8_name}" : "${local.service_name}-${local.api_gateway_8_stage}-${replace(local.lambda_8_file, ".go", "")}-8" }" //"
  lambda_go_8_runtime = "${local.lambda_go_8 && local.lambda_8_runtime != "" ? local.lambda_8_runtime : "go1.x" }"
  lambda_go_8_handler = "${local.lambda_go_8 && local.lambda_8_handler != "" ? local.lambda_8_handler : local.lambda_go_8_name}"
  lambda_go_8_bin     = "${path.root}/bin/${local.lambda_go_8_name}"
  lambda_go_8_zip     = "${local.lambda_go_8 ? "${path.root}/.terraform/archive_files/${local.lambda_go_8_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_8             = "${contains(split(".", local.lambda_8_file), "py")}"
  lambda_py_8_count       = "${local.lambda_py_8 ? 1 : 0}"
  lambda_py_8_name        = "${local.lambda_py_8 && local.lambda_8_name != "" ? "${local.service_name}-${local.api_gateway_8_stage}-${local.lambda_8_name}" : "${local.service_name}-${local.api_gateway_8_stage}-${replace(local.lambda_8_file, ".py", "")}-8" }" //"
  lambda_py_8_runtime     = "${local.lambda_py_8 && local.lambda_8_runtime != "" ? local.lambda_8_runtime : "python3.6" }"
  lambda_py_8_handler     = "${local.lambda_py_8 && local.lambda_8_handler != "" ? local.lambda_8_handler : "${local.lambda_py_8_name}.handler" }" //"
  lambda_py_8_source_file = "${local.lambda_py_8 ? local.lambda_8_file : ""}"
  lambda_py_8_zip         = "${local.lambda_py_8 ? "${path.root}/.terraform/archive_files/${local.lambda_py_8_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_8             = "${contains(split(".", local.lambda_8_file), "js")}"
  lambda_js_8_count       = "${local.lambda_js_8 ? 1 : 0}"
  lambda_js_8_name        = "${local.lambda_js_8 && local.lambda_8_name != "" ? "${local.service_name}-${local.api_gateway_8_stage}-${local.lambda_8_name}" : "${local.service_name}-${local.api_gateway_8_stage}-${replace(local.lambda_8_file, ".js", "")}-8" }" //"
  lambda_js_8_runtime     = "${local.lambda_js_8 && local.lambda_8_runtime != "" ? local.lambda_8_runtime : "nodejs8.10" }"
  lambda_js_8_handler     = "${local.lambda_js_8 && local.lambda_8_handler != "" ? local.lambda_8_handler : "${local.lambda_js_8_name}.handler" }" //"
  lambda_js_8_source_file = "${local.lambda_js_8 ? local.lambda_8_file : ""}"
  lambda_js_8_zip         = "${local.lambda_js_8 ? "${path.root}/.terraform/archive_files/${local.lambda_js_8_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_8_name_computed = "${local.lambda_8_name != "" ? local.lambda_8_name : (local.lambda_go_8 ? local.lambda_go_8_name : (local.lambda_py_8 ? local.lambda_py_8_name : (local.lambda_js_8 ? local.lambda_js_8_name : "${local.service_name}-ez-lambda" ))) }" //"

  // API Gateway
  api_gateway_8               = "${lookup(local.lambda_8, "http", "" ) != "" || lookup(local.lambda_8, "http_path", "") != "" || lookup(local.lambda_8, "http_method", "") != "" || lookup(local.lambda_8, "http_authorization", "") != "" || lookup(local.lambda_8, "http_stage", "") != ""}"
  api_gateway_8_count         = "${local.api_gateway_8 ? 1 : 0}"
  api_gateway_8_name          = "${local.lambda_8_name_computed}"
  api_gateway_8_path          = "${lookup(local.lambda_8, "http_path", local.lambda_8_name_computed)}"
  api_gateway_8_method        = "${upper(lookup(local.lambda_8, "http_method", "get"))}"
  api_gateway_8_stage         = "${lookup(local.lambda_8, "http_stage", "prod")}"
  api_gateway_8_authorization = "${lookup(local.lambda_8, "http_authorization", "NONE")}"
  api_gateway_8_metrics       = "${lookup(local.lambda_8, "http_metrics", "") != ""}"
  api_gateway_8_logging       = "${lookup(local.lambda_8, "http_logging", "") != ""}"
  api_gateway_8_logging_level = "${local.api_gateway_8_logging ? "INFO" : "OFF"}"

  // Cloudwatch Schedule
  cloudwatch_8       = "${lookup(local.lambda_8, "schedule", "" ) != "" || lookup(local.lambda_8, "schedule_rate", "") != ""}"
  cloudwatch_8_count = "${local.cloudwatch_8 ? 1 : 0}"
  cloudwatch_8_name  = "${local.lambda_8_name_computed}"
  cloudwatch_8_rate  = "${lookup(local.lambda_8, "schedule_rate", "rate(1 hour)")}"
}

// locals for lambda_9
locals {
  lambda_9 = "${local.functions[9]}"

  // Vars
  lambda_9_file       = "${lookup(local.lambda_9, "file", "")}"
  lambda_9_count      = "${local.lambda_9_file != "" ? 1 : 0}"
  lambda_9_vendor_cmd = "${lookup(local.lambda_9, "vendor_cmd", "")}"
  lambda_9_test_cmd   = "${lookup(local.lambda_9, "test_cmd", "")}"
  lambda_9_timeout    = "${lookup(local.lambda_9, "timeout", "5")}"
  lambda_9_env_vars   = "${lookup(local.lambda_9, "env_vars", "")}"
  lambda_9_name       = "${lookup(local.lambda_9, "name", "")}"
  lambda_9_runtime    = "${lookup(local.lambda_9, "runtime", "")}"
  lambda_9_handler    = "${lookup(local.lambda_9, "handler", "")}"

  // Lambda for Golang
  lambda_go_9         = "${contains(split(".", local.lambda_9_file), "go")}"
  lambda_go_9_count   = "${local.lambda_go_9 ? 1 : 0}"
  lambda_go_9_name    = "${local.lambda_go_9 && local.lambda_9_name    != "" ? "${local.service_name}-${local.api_gateway_9_stage}-${local.lambda_9_name}" : "${local.service_name}-${local.api_gateway_9_stage}-${replace(local.lambda_9_file, ".go", "")}-9" }" //"
  lambda_go_9_runtime = "${local.lambda_go_9 && local.lambda_9_runtime != "" ? local.lambda_9_runtime : "go1.x" }"
  lambda_go_9_handler = "${local.lambda_go_9 && local.lambda_9_handler != "" ? local.lambda_9_handler : local.lambda_go_9_name}"
  lambda_go_9_bin     = "${path.root}/bin/${local.lambda_go_9_name}"
  lambda_go_9_zip     = "${local.lambda_go_9 ? "${path.root}/.terraform/archive_files/${local.lambda_go_9_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_9             = "${contains(split(".", local.lambda_9_file), "py")}"
  lambda_py_9_count       = "${local.lambda_py_9 ? 1 : 0}"
  lambda_py_9_name        = "${local.lambda_py_9 && local.lambda_9_name != "" ? "${local.service_name}-${local.api_gateway_9_stage}-${local.lambda_9_name}" : "${local.service_name}-${local.api_gateway_9_stage}-${replace(local.lambda_9_file, ".py", "")}-9" }" //"
  lambda_py_9_runtime     = "${local.lambda_py_9 && local.lambda_9_runtime != "" ? local.lambda_9_runtime : "python3.6" }"
  lambda_py_9_handler     = "${local.lambda_py_9 && local.lambda_9_handler != "" ? local.lambda_9_handler : "${local.lambda_py_9_name}.handler" }" //"
  lambda_py_9_source_file = "${local.lambda_py_9 ? local.lambda_9_file : ""}"
  lambda_py_9_zip         = "${local.lambda_py_9 ? "${path.root}/.terraform/archive_files/${local.lambda_py_9_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_9             = "${contains(split(".", local.lambda_9_file), "js")}"
  lambda_js_9_count       = "${local.lambda_js_9 ? 1 : 0}"
  lambda_js_9_name        = "${local.lambda_js_9 && local.lambda_9_name != "" ? "${local.service_name}-${local.api_gateway_9_stage}-${local.lambda_9_name}" : "${local.service_name}-${local.api_gateway_9_stage}-${replace(local.lambda_9_file, ".js", "")}-9" }" //"
  lambda_js_9_runtime     = "${local.lambda_js_9 && local.lambda_9_runtime != "" ? local.lambda_9_runtime : "nodejs8.10" }"
  lambda_js_9_handler     = "${local.lambda_js_9 && local.lambda_9_handler != "" ? local.lambda_9_handler : "${local.lambda_js_9_name}.handler" }" //"
  lambda_js_9_source_file = "${local.lambda_js_9 ? local.lambda_9_file : ""}"
  lambda_js_9_zip         = "${local.lambda_js_9 ? "${path.root}/.terraform/archive_files/${local.lambda_js_9_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_9_name_computed = "${local.lambda_9_name != "" ? local.lambda_9_name : (local.lambda_go_9 ? local.lambda_go_9_name : (local.lambda_py_9 ? local.lambda_py_9_name : (local.lambda_js_9 ? local.lambda_js_9_name : "${local.service_name}-ez-lambda" ))) }" //"

  // API Gateway
  api_gateway_9               = "${lookup(local.lambda_9, "http", "" ) != "" || lookup(local.lambda_9, "http_path", "") != "" || lookup(local.lambda_9, "http_method", "") != "" || lookup(local.lambda_9, "http_authorization", "") != "" || lookup(local.lambda_9, "http_stage", "") != ""}"
  api_gateway_9_count         = "${local.api_gateway_9 ? 1 : 0}"
  api_gateway_9_name          = "${local.lambda_9_name_computed}"
  api_gateway_9_path          = "${lookup(local.lambda_9, "http_path", local.lambda_9_name_computed)}"
  api_gateway_9_method        = "${upper(lookup(local.lambda_9, "http_method", "get"))}"
  api_gateway_9_stage         = "${lookup(local.lambda_9, "http_stage", "prod")}"
  api_gateway_9_authorization = "${lookup(local.lambda_9, "http_authorization", "NONE")}"
  api_gateway_9_metrics       = "${lookup(local.lambda_9, "http_metrics", "") != ""}"
  api_gateway_9_logging       = "${lookup(local.lambda_9, "http_logging", "") != ""}"
  api_gateway_9_logging_level = "${local.api_gateway_9_logging ? "INFO" : "OFF"}"

  // Cloudwatch Schedule
  cloudwatch_9       = "${lookup(local.lambda_9, "schedule", "" ) != "" || lookup(local.lambda_9, "schedule_rate", "") != ""}"
  cloudwatch_9_count = "${local.cloudwatch_9 ? 1 : 0}"
  cloudwatch_9_name  = "${local.lambda_9_name_computed}"
  cloudwatch_9_rate  = "${lookup(local.lambda_9, "schedule_rate", "rate(1 hour)")}"
}
