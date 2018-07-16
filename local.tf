locals {
  // Variable setup
  path_root_list = "${split("/", path.root)}"
  path_root_len  = "${length(local.path_root_list)}"
  parent_dir     = "${element(local.path_root_list, local.path_root_len - 1)}"
  service_name   = "${var.service_name != "" ? var.service_name : local.parent_dir}"
}

// Lambda_0
locals {
  lambda_0 = "${var.functions[0]}"

  // Vars
  lambda_0_file       = "${local.lambda_0["file"]}"
  lambda_0_count      = "${local.lambda_0_file != "" ? 1 : 0}"
  lambda_0_vendor_cmd = "${lookup(local.lambda_0, "vendor_cmd", "")}"
  lambda_0_test_cmd   = "${lookup(local.lambda_0, "test_cmd", "")}"
  lambda_0_timeout    = "${lookup(local.lambda_0, "timeout", "5")}"
  lambda_0_env_vars   = "${lookup(local.lambda_0, "env_vars", "")}"
  lambda_0_b64sha256  = "${base64sha256(file(local.lambda_0_file))}"
  lambda_0_name       = "${lookup(local.lambda_0, "name", "")}"
  lambda_0_runtime    = "${lookup(local.lambda_0, "runtime", "")}"
  lambda_0_handler    = "${lookup(local.lambda_0, "handler", "")}"

  // Lambda for Golang
  lambda_go_0         = "${contains(split(".", local.lambda_0_file), "go")}"
  lambda_go_0_count   = "${local.lambda_go_0 ? 1 : 0}"
  lambda_go_0_name    = "${local.lambda_go_0 && local.lambda_0_name    != "" ? "${local.service_name}-${local.lambda_0_name}" : "${local.service_name}-${replace(local.lambda_0_file, ".go", "")}" }" //"
  lambda_go_0_runtime = "${local.lambda_go_0 && local.lambda_0_runtime != "" ? local.lambda_0_runtime : "go1.x" }"
  lambda_go_0_handler = "${local.lambda_go_0 && local.lambda_0_handler != "" ? local.lambda_0_handler : local.lambda_go_0_name}"
  lambda_go_0_bin     = "${path.root}/bin/${local.lambda_go_0_name}"
  lambda_go_0_zip     = "${local.lambda_go_0 ? "${path.root}/.terraform/archive_files/${local.lambda_go_0_name}-lambda.zip" : ""}"                                                                    //"

  // Lambda for Python
  lambda_py_0             = "${contains(split(".", local.lambda_0_file), "py")}"
  lambda_py_0_count       = "${local.lambda_py_0 ? 1 : 0}"
  lambda_py_0_name        = "${local.lambda_py_0 && local.lambda_0_name != "" ? "${local.service_name}-${local.lambda_0_name}" : "${local.service_name}-${replace(local.lambda_0_file, ".py", "")}" }" //"
  lambda_py_0_runtime     = "${local.lambda_py_0 && local.lambda_0_runtime != "" ? local.lambda_0_runtime : "python3.6" }"
  lambda_py_0_handler     = "${local.lambda_py_0 && local.lambda_0_handler != "" ? local.lambda_0_handler : "${local.lambda_py_0_name}.handler" }"                                                     //"
  lambda_py_0_source_file = "${local.lambda_py_0 ? local.lambda_0_file : ""}"
  lambda_py_0_zip         = "${local.lambda_py_0 ? "${path.root}/.terraform/archive_files/${local.lambda_py_0_name}-lambda.zip" : ""}"                                                                 //"

  // Lambda for JS
  lambda_js_0             = "${contains(split(".", local.lambda_0_file), "js")}"
  lambda_js_0_count       = "${local.lambda_js_0 ? 1 : 0}"
  lambda_js_0_name        = "${local.lambda_js_0 && local.lambda_0_name != "" ? "${local.service_name}-${local.lambda_0_name}" : "${local.service_name}-${replace(local.lambda_0_file, ".js", "")}" }" //"
  lambda_js_0_runtime     = "${local.lambda_js_0 && local.lambda_0_runtime != "" ? local.lambda_0_runtime : "nodejs8.10" }"
  lambda_js_0_handler     = "${local.lambda_js_0 && local.lambda_0_handler != "" ? local.lambda_0_handler : "${local.lambda_js_0_name}.handler" }"                                                     //"
  lambda_js_0_source_file = "${local.lambda_js_0 ? local.lambda_0_file : ""}"
  lambda_js_0_zip         = "${local.lambda_js_0 ? "${path.root}/.terraform/archive_files/${local.lambda_js_0_name}-lambda.zip" : ""}"                                                                 //"

  // Lambda Generic
  lambda_0_name_computed = "${local.lambda_0_name != "" ? local.lambda_0_name : (local.lambda_go_0 ? local.lambda_go_0_name : (local.lambda_py_0 ? local.lambda_py_0_name : (local.lambda_js_0 ? local.lambda_js_0_name : "${local.service_name}-ez-lambda" ))) }" //"
}

// // Event 0
// locals {
//   event_0      = "${var.events[0]}"
//   event_0_type = "${local.event_0["type"]}"


//   // API Gateway
//   api_gateway_0               = "${lower(local.event_0_type) == "http"}"
//   api_gateway_0_count         = "${local.api_gateway_0 ? 1 : 0}"
//   api_gateway_0_name          = "${local.lambda_name}-0"
//   api_gateway_0_new           = "${local.api_gateway_0 && local.event_0["api_gateway_id"] == "" && local.event_0["api_gateway_root_resource_id"] == ""}"
//   api_gateway_0_path          = "${local.event_0["path"] != ""   ? local.event_0["path"]          : local.lambda_name }"
//   api_gateway_0_method        = "${local.event_0["method"] != "" ? upper(local.event_0["method"]) : "GET" }"
//   api_gateway_0_stage         = "${local.event_0["stage"] != ""  ? local.event_0["stage"]         : "prod" }"
//   api_gateway_0_authorization = "${local.event_0["authorization"] == "" || upper(local.event_0["authorization"]) == "NONE" ? "NONE" : local.event_0["authorization"]}"
// }

