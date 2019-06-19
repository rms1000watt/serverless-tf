// GENERATED FILE: DO NOT EDIT

locals {
  // Variable setup
  path_root_list = "${split("/", path.root)}"
  path_root_len  = "${length(local.path_root_list)}"
  parent_dir     = "${element(local.path_root_list, local.path_root_len - 1)}"
  service_name   = "${var.service != "" ? var.service : local.parent_dir}"
  stage          = "${var.stage}"
  http_policy    = "${var.http_policy}"

  default_lambda_name = "${local.service_name}-serverless-tf"
  default_rebuild     = "never"
  default_s3_events   = "s3:ObjectRemoved:* s3:ObjectCreated:* s3:ReducedRedundancyLostObject"

  functions_length = "${length(var.functions)}"
  zero             = ["0"]
  zeros            = [{k=""},{k=""},{k=""},{k=""},{k=""}]
  functions        = "${concat(var.functions, local.zeros)}"

  account_id = "${data.aws_caller_identity.current.account_id}"
}

// locals for lambda_0
locals {
  lambda_0 = "${local.functions[0]}"

  // Vars
  lambda_0_file         = "${lookup(local.lambda_0, "file", "")}"
  lambda_0_count        = "${local.lambda_0_file != "" ? 1 : 0}"
  lambda_0_vendor_cmd   = "${lookup(local.lambda_0, "vendor_cmd", "")}"
  lambda_0_test_cmd     = "${lookup(local.lambda_0, "test_cmd", "")}"
  lambda_0_timeout      = "${lookup(local.lambda_0, "timeout", "5")}"
  lambda_0_name         = "${lookup(local.lambda_0, "name", "")}"
  lambda_0_runtime      = "${lookup(local.lambda_0, "runtime", "")}"
  lambda_0_handler      = "${lookup(local.lambda_0, "handler", "")}"
  lambda_0_rebuild      = "${lookup(local.lambda_0, "rebuild", local.default_rebuild) != local.default_rebuild}"
  lambda_0_role_arn     = "${lookup(local.lambda_0, "role_arn", "")}"
  lambda_0_dir          = "${dirname(local.lambda_0_file)}"
  lambda_0_arn          = "arn:aws:lambda:${local.lambda_0_region}:${data.aws_caller_identity.current.account_id}:function:${local.lambda_0_name_computed}"
  lambda_0_file_replace = "${replace(replace(replace(replace(replace(local.lambda_0_file, ".go", ""), ".py", ""), ".js", ""), "/", "-"), "..", "-")}"

  lambda_0_env_keys             = "${lookup(local.lambda_0, "env_keys", "AUTHOR")}"
  lambda_0_env_vals             = "${lookup(local.lambda_0, "env_vals", "rms1000watt")}"
  lambda_0_env_keys_list        = "${split(" ", local.lambda_0_env_keys)}"
  lambda_0_env_vals_list        = "${split(" ", local.lambda_0_env_vals)}"
  lambda_0_env_keys_list_length = "${length(local.lambda_0_env_keys_list)}"
  lambda_0_env_vals_list_length = "${length(local.lambda_0_env_vals_list)}"
  lambda_0_env                  = "${zipmap(local.lambda_0_env_keys_list, local.lambda_0_env_vals_list)}"

  lambda_0_region_in   = "${lookup(local.lambda_0, "region", "")}"
  lambda_0_region      = "${local.lambda_0_region_in != "" ? local.lambda_0_region_in  : data.aws_region.current.name}"
  lambda_0_same_region = "${local.lambda_0_region == data.aws_region.current.name}"

  // Lambda for Golang
  lambda_go_0         = "${contains(split(".", local.lambda_0_file), "go")}"
  lambda_go_0_count   = "${local.lambda_go_0 ? 1 : 0}"
  lambda_go_0_name    = "${local.lambda_go_0 && local.lambda_0_name    != "" ? "${local.service_name}-${local.stage}-${local.lambda_0_name}" : "${local.service_name}-${local.stage}-${local.lambda_0_file_replace}-0" }" //"
  lambda_go_0_runtime = "${local.lambda_go_0 && local.lambda_0_runtime != "" ? local.lambda_0_runtime : "go1.x" }"
  lambda_go_0_handler = "${local.lambda_go_0 && local.lambda_0_handler != "" ? local.lambda_0_handler : local.lambda_go_0_name}"
  lambda_go_0_bin     = "${path.root}/bin/${local.lambda_go_0_name}"
  lambda_go_0_zip     = "${local.lambda_go_0 ? "${path.root}/.terraform/archive_files/${local.lambda_go_0_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_0             = "${contains(split(".", local.lambda_0_file), "py")}"
  lambda_py_0_count       = "${local.lambda_py_0 ? 1 : 0}"
  lambda_py_0_name        = "${local.lambda_py_0 && local.lambda_0_name != "" ? "${local.service_name}-${local.stage}-${local.lambda_0_name}" : "${local.service_name}-${local.stage}-${local.lambda_0_file_replace}-0" }" //"
  lambda_py_0_runtime     = "${local.lambda_py_0 && local.lambda_0_runtime != "" ? local.lambda_0_runtime : "python3.6" }"
  lambda_py_0_handler     = "${local.lambda_py_0 && local.lambda_0_handler != "" ? local.lambda_0_handler : basename(replace(local.lambda_0_file, ".py", ".handler"))}"
  lambda_py_0_source_file = "${local.lambda_py_0 ? local.lambda_0_file : ""}"
  lambda_py_0_zip         = "${local.lambda_py_0 ? "${path.root}/.terraform/archive_files/${local.lambda_py_0_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_0             = "${contains(split(".", local.lambda_0_file), "js")}"
  lambda_js_0_count       = "${local.lambda_js_0 ? 1 : 0}"
  lambda_js_0_name        = "${local.lambda_js_0 && local.lambda_0_name != "" ? "${local.service_name}-${local.stage}-${local.lambda_0_name}" : "${local.service_name}-${local.stage}-${local.lambda_0_file_replace}-0" }" //"
  lambda_js_0_runtime     = "${local.lambda_js_0 && local.lambda_0_runtime != "" ? local.lambda_0_runtime : "nodejs8.10" }"
  lambda_js_0_handler     = "${local.lambda_js_0 && local.lambda_0_handler != "" ? local.lambda_0_handler : basename(replace(local.lambda_0_file, ".js", ".handler"))}"
  lambda_js_0_source_file = "${local.lambda_js_0 ? local.lambda_0_file : ""}"
  lambda_js_0_zip         = "${local.lambda_js_0 ? "${path.root}/.terraform/archive_files/${local.lambda_js_0_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_0_name_computed = "${local.lambda_go_0 ? local.lambda_go_0_name : (local.lambda_py_0 ? local.lambda_py_0_name : (local.lambda_js_0 ? local.lambda_js_0_name : local.default_lambda_name))}"

  // API Gateway
  api_gateway_0                = "${lookup(local.lambda_0, "http", "" ) != "" || lookup(local.lambda_0, "http_path", "") != "" || lookup(local.lambda_0, "http_method", "") != "" || lookup(local.lambda_0, "http_authorizer", "") != "" || lookup(local.lambda_0, "http_stage", "") != ""}"
  api_gateway_0_count          = "${local.api_gateway_0 ? 1 : 0}"
  api_gateway_0_name           = "${local.lambda_0_name_computed}"
  api_gateway_0_path           = "${lookup(local.lambda_0, "http_path", local.lambda_0_name_computed)}"
  api_gateway_0_method         = "${upper(lookup(local.lambda_0, "http_method", "get"))}"
  api_gateway_0_stage          = "${local.stage}"
  api_gateway_0_metrics        = "${lookup(local.lambda_0, "http_metrics", "") != ""}"
  api_gateway_0_logging        = "${lookup(local.lambda_0, "http_logging", "") != ""}"
  api_gateway_0_logging_level  = "${local.api_gateway_0_logging ? "INFO" : "OFF"}"
  api_gateway_0_regional_count = "${local.lambda_0_same_region ? 0 : 1}"
  api_gateway_0_global_count   = "${local.lambda_0_same_region ? 1 : 0}"

  api_gateway_0_authorizer                  = "${lookup(local.lambda_0, "http_authorizer", "")}"
  api_gateway_0_authorizer_count            = "${local.api_gateway_0_authorizer != "" ? 1 : 0}"
  api_gateway_0_authorization               = "${local.api_gateway_0_authorizer != "" ? "CUSTOM" : "NONE"}"
  api_gateway_0_authorizer_full_name        = "${local.service_name}-${local.stage}-${local.api_gateway_0_authorizer}"
  api_gateway_0_authorizer_lambda_arn       = "arn:aws:lambda:${lookup(local.lambda_name_region, local.api_gateway_0_authorizer, "")}:${data.aws_caller_identity.current.account_id}:function:${local.api_gateway_0_authorizer_full_name}"
  api_gateway_0_authorizer_uri              = "arn:aws:apigateway:${local.lambda_0_region}:lambda:path/2015-03-31/functions/${local.api_gateway_0_authorizer_lambda_arn}/invocations"
  api_gateway_0_authorizer_policy_arn       = "${lookup(local.lambda_0, "http_authorizer_policy_arn", "")}"
  api_gateway_0_authorizer_policy_arn_count = "${local.api_gateway_0_authorizer_policy_arn != "" ? 1 : 0}"

  // Cloudwatch Schedule
  cloudwatch_0       = "${lookup(local.lambda_0, "schedule", "" ) != "" || lookup(local.lambda_0, "schedule_rate", "") != ""}"
  cloudwatch_0_count = "${local.cloudwatch_0 ? 1 : 0}"
  cloudwatch_0_name  = "${local.lambda_0_name_computed}"
  cloudwatch_0_rate  = "${lookup(local.lambda_0, "schedule_rate", "rate(1 hour)")}"

  // S3
  s3_0_bucket      = "${lookup(local.lambda_0, "s3_bucket", "")}"
  s3_0_bucket_arn  = "arn:aws:s3:::${local.s3_0_bucket}"
  s3_0_count       = "${local.s3_0_bucket != "" ? 1 : 0}"
  s3_0_prefix      = "${lookup(local.lambda_0, "s3_prefix", "")}"
  s3_0_suffix      = "${lookup(local.lambda_0, "s3_suffix", "")}"
  s3_0_events      = "${lookup(local.lambda_0, "s3_events", local.default_s3_events)}"
  s3_0_events_list = "${split(" ", local.s3_0_events)}"

  // Cloudwatch Event
  cloudwatch_event_0         = "${local.cloudwatch_event_0_pattern != ""}"
  cloudwatch_event_0_count   = "${local.cloudwatch_event_0 ? 1 : 0}"
  cloudwatch_event_0_name    = "${local.lambda_0_name_computed}"
  cloudwatch_event_0_pattern = "${lookup(local.lambda_0, "cloudwatch_event_pattern", "")}"
}

// locals for lambda_1
locals {
  lambda_1 = "${local.functions[1]}"

  // Vars
  lambda_1_file         = "${lookup(local.lambda_1, "file", "")}"
  lambda_1_count        = "${local.lambda_1_file != "" ? 1 : 0}"
  lambda_1_vendor_cmd   = "${lookup(local.lambda_1, "vendor_cmd", "")}"
  lambda_1_test_cmd     = "${lookup(local.lambda_1, "test_cmd", "")}"
  lambda_1_timeout      = "${lookup(local.lambda_1, "timeout", "5")}"
  lambda_1_name         = "${lookup(local.lambda_1, "name", "")}"
  lambda_1_runtime      = "${lookup(local.lambda_1, "runtime", "")}"
  lambda_1_handler      = "${lookup(local.lambda_1, "handler", "")}"
  lambda_1_rebuild      = "${lookup(local.lambda_1, "rebuild", local.default_rebuild) != local.default_rebuild}"
  lambda_1_role_arn     = "${lookup(local.lambda_1, "role_arn", "")}"
  lambda_1_dir          = "${dirname(local.lambda_1_file)}"
  lambda_1_arn          = "arn:aws:lambda:${local.lambda_1_region}:${data.aws_caller_identity.current.account_id}:function:${local.lambda_1_name_computed}"
  lambda_1_file_replace = "${replace(replace(replace(replace(replace(local.lambda_1_file, ".go", ""), ".py", ""), ".js", ""), "/", "-"), "..", "-")}"

  lambda_1_env_keys             = "${lookup(local.lambda_1, "env_keys", "AUTHOR")}"
  lambda_1_env_vals             = "${lookup(local.lambda_1, "env_vals", "rms1000watt")}"
  lambda_1_env_keys_list        = "${split(" ", local.lambda_1_env_keys)}"
  lambda_1_env_vals_list        = "${split(" ", local.lambda_1_env_vals)}"
  lambda_1_env_keys_list_length = "${length(local.lambda_1_env_keys_list)}"
  lambda_1_env_vals_list_length = "${length(local.lambda_1_env_vals_list)}"
  lambda_1_env                  = "${zipmap(local.lambda_1_env_keys_list, local.lambda_1_env_vals_list)}"

  lambda_1_region_in   = "${lookup(local.lambda_1, "region", "")}"
  lambda_1_region      = "${local.lambda_1_region_in != "" ? local.lambda_1_region_in  : data.aws_region.current.name}"
  lambda_1_same_region = "${local.lambda_1_region == data.aws_region.current.name}"

  // Lambda for Golang
  lambda_go_1         = "${contains(split(".", local.lambda_1_file), "go")}"
  lambda_go_1_count   = "${local.lambda_go_1 ? 1 : 0}"
  lambda_go_1_name    = "${local.lambda_go_1 && local.lambda_1_name    != "" ? "${local.service_name}-${local.stage}-${local.lambda_1_name}" : "${local.service_name}-${local.stage}-${local.lambda_1_file_replace}-1" }" //"
  lambda_go_1_runtime = "${local.lambda_go_1 && local.lambda_1_runtime != "" ? local.lambda_1_runtime : "go1.x" }"
  lambda_go_1_handler = "${local.lambda_go_1 && local.lambda_1_handler != "" ? local.lambda_1_handler : local.lambda_go_1_name}"
  lambda_go_1_bin     = "${path.root}/bin/${local.lambda_go_1_name}"
  lambda_go_1_zip     = "${local.lambda_go_1 ? "${path.root}/.terraform/archive_files/${local.lambda_go_1_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_1             = "${contains(split(".", local.lambda_1_file), "py")}"
  lambda_py_1_count       = "${local.lambda_py_1 ? 1 : 0}"
  lambda_py_1_name        = "${local.lambda_py_1 && local.lambda_1_name != "" ? "${local.service_name}-${local.stage}-${local.lambda_1_name}" : "${local.service_name}-${local.stage}-${local.lambda_1_file_replace}-1" }" //"
  lambda_py_1_runtime     = "${local.lambda_py_1 && local.lambda_1_runtime != "" ? local.lambda_1_runtime : "python3.6" }"
  lambda_py_1_handler     = "${local.lambda_py_1 && local.lambda_1_handler != "" ? local.lambda_1_handler : basename(replace(local.lambda_1_file, ".py", ".handler"))}"
  lambda_py_1_source_file = "${local.lambda_py_1 ? local.lambda_1_file : ""}"
  lambda_py_1_zip         = "${local.lambda_py_1 ? "${path.root}/.terraform/archive_files/${local.lambda_py_1_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_1             = "${contains(split(".", local.lambda_1_file), "js")}"
  lambda_js_1_count       = "${local.lambda_js_1 ? 1 : 0}"
  lambda_js_1_name        = "${local.lambda_js_1 && local.lambda_1_name != "" ? "${local.service_name}-${local.stage}-${local.lambda_1_name}" : "${local.service_name}-${local.stage}-${local.lambda_1_file_replace}-1" }" //"
  lambda_js_1_runtime     = "${local.lambda_js_1 && local.lambda_1_runtime != "" ? local.lambda_1_runtime : "nodejs8.10" }"
  lambda_js_1_handler     = "${local.lambda_js_1 && local.lambda_1_handler != "" ? local.lambda_1_handler : basename(replace(local.lambda_1_file, ".js", ".handler"))}"
  lambda_js_1_source_file = "${local.lambda_js_1 ? local.lambda_1_file : ""}"
  lambda_js_1_zip         = "${local.lambda_js_1 ? "${path.root}/.terraform/archive_files/${local.lambda_js_1_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_1_name_computed = "${local.lambda_go_1 ? local.lambda_go_1_name : (local.lambda_py_1 ? local.lambda_py_1_name : (local.lambda_js_1 ? local.lambda_js_1_name : local.default_lambda_name))}"

  // API Gateway
  api_gateway_1                = "${lookup(local.lambda_1, "http", "" ) != "" || lookup(local.lambda_1, "http_path", "") != "" || lookup(local.lambda_1, "http_method", "") != "" || lookup(local.lambda_1, "http_authorizer", "") != "" || lookup(local.lambda_1, "http_stage", "") != ""}"
  api_gateway_1_count          = "${local.api_gateway_1 ? 1 : 0}"
  api_gateway_1_name           = "${local.lambda_1_name_computed}"
  api_gateway_1_path           = "${lookup(local.lambda_1, "http_path", local.lambda_1_name_computed)}"
  api_gateway_1_method         = "${upper(lookup(local.lambda_1, "http_method", "get"))}"
  api_gateway_1_stage          = "${local.stage}"
  api_gateway_1_metrics        = "${lookup(local.lambda_1, "http_metrics", "") != ""}"
  api_gateway_1_logging        = "${lookup(local.lambda_1, "http_logging", "") != ""}"
  api_gateway_1_logging_level  = "${local.api_gateway_1_logging ? "INFO" : "OFF"}"
  api_gateway_1_regional_count = "${local.lambda_1_same_region ? 0 : 1}"
  api_gateway_1_global_count   = "${local.lambda_1_same_region ? 1 : 0}"

  api_gateway_1_authorizer                  = "${lookup(local.lambda_1, "http_authorizer", "")}"
  api_gateway_1_authorizer_count            = "${local.api_gateway_1_authorizer != "" ? 1 : 0}"
  api_gateway_1_authorization               = "${local.api_gateway_1_authorizer != "" ? "CUSTOM" : "NONE"}"
  api_gateway_1_authorizer_full_name        = "${local.service_name}-${local.stage}-${local.api_gateway_1_authorizer}"
  api_gateway_1_authorizer_lambda_arn       = "arn:aws:lambda:${lookup(local.lambda_name_region, local.api_gateway_1_authorizer, "")}:${data.aws_caller_identity.current.account_id}:function:${local.api_gateway_1_authorizer_full_name}"
  api_gateway_1_authorizer_uri              = "arn:aws:apigateway:${local.lambda_1_region}:lambda:path/2015-03-31/functions/${local.api_gateway_1_authorizer_lambda_arn}/invocations"
  api_gateway_1_authorizer_policy_arn       = "${lookup(local.lambda_1, "http_authorizer_policy_arn", "")}"
  api_gateway_1_authorizer_policy_arn_count = "${local.api_gateway_1_authorizer_policy_arn != "" ? 1 : 0}"

  // Cloudwatch Schedule
  cloudwatch_1       = "${lookup(local.lambda_1, "schedule", "" ) != "" || lookup(local.lambda_1, "schedule_rate", "") != ""}"
  cloudwatch_1_count = "${local.cloudwatch_1 ? 1 : 0}"
  cloudwatch_1_name  = "${local.lambda_1_name_computed}"
  cloudwatch_1_rate  = "${lookup(local.lambda_1, "schedule_rate", "rate(1 hour)")}"

  // S3
  s3_1_bucket      = "${lookup(local.lambda_1, "s3_bucket", "")}"
  s3_1_bucket_arn  = "arn:aws:s3:::${local.s3_1_bucket}"
  s3_1_count       = "${local.s3_1_bucket != "" ? 1 : 0}"
  s3_1_prefix      = "${lookup(local.lambda_1, "s3_prefix", "")}"
  s3_1_suffix      = "${lookup(local.lambda_1, "s3_suffix", "")}"
  s3_1_events      = "${lookup(local.lambda_1, "s3_events", local.default_s3_events)}"
  s3_1_events_list = "${split(" ", local.s3_1_events)}"

  // Cloudwatch Event
  cloudwatch_event_1         = "${local.cloudwatch_event_1_pattern != ""}"
  cloudwatch_event_1_count   = "${local.cloudwatch_event_1 ? 1 : 0}"
  cloudwatch_event_1_name    = "${local.lambda_1_name_computed}"
  cloudwatch_event_1_pattern = "${lookup(local.lambda_1, "cloudwatch_event_pattern", "")}"
}

// locals for lambda_2
locals {
  lambda_2 = "${local.functions[2]}"

  // Vars
  lambda_2_file         = "${lookup(local.lambda_2, "file", "")}"
  lambda_2_count        = "${local.lambda_2_file != "" ? 1 : 0}"
  lambda_2_vendor_cmd   = "${lookup(local.lambda_2, "vendor_cmd", "")}"
  lambda_2_test_cmd     = "${lookup(local.lambda_2, "test_cmd", "")}"
  lambda_2_timeout      = "${lookup(local.lambda_2, "timeout", "5")}"
  lambda_2_name         = "${lookup(local.lambda_2, "name", "")}"
  lambda_2_runtime      = "${lookup(local.lambda_2, "runtime", "")}"
  lambda_2_handler      = "${lookup(local.lambda_2, "handler", "")}"
  lambda_2_rebuild      = "${lookup(local.lambda_2, "rebuild", local.default_rebuild) != local.default_rebuild}"
  lambda_2_role_arn     = "${lookup(local.lambda_2, "role_arn", "")}"
  lambda_2_dir          = "${dirname(local.lambda_2_file)}"
  lambda_2_arn          = "arn:aws:lambda:${local.lambda_2_region}:${data.aws_caller_identity.current.account_id}:function:${local.lambda_2_name_computed}"
  lambda_2_file_replace = "${replace(replace(replace(replace(replace(local.lambda_2_file, ".go", ""), ".py", ""), ".js", ""), "/", "-"), "..", "-")}"

  lambda_2_env_keys             = "${lookup(local.lambda_2, "env_keys", "AUTHOR")}"
  lambda_2_env_vals             = "${lookup(local.lambda_2, "env_vals", "rms1000watt")}"
  lambda_2_env_keys_list        = "${split(" ", local.lambda_2_env_keys)}"
  lambda_2_env_vals_list        = "${split(" ", local.lambda_2_env_vals)}"
  lambda_2_env_keys_list_length = "${length(local.lambda_2_env_keys_list)}"
  lambda_2_env_vals_list_length = "${length(local.lambda_2_env_vals_list)}"
  lambda_2_env                  = "${zipmap(local.lambda_2_env_keys_list, local.lambda_2_env_vals_list)}"

  lambda_2_region_in   = "${lookup(local.lambda_2, "region", "")}"
  lambda_2_region      = "${local.lambda_2_region_in != "" ? local.lambda_2_region_in  : data.aws_region.current.name}"
  lambda_2_same_region = "${local.lambda_2_region == data.aws_region.current.name}"

  // Lambda for Golang
  lambda_go_2         = "${contains(split(".", local.lambda_2_file), "go")}"
  lambda_go_2_count   = "${local.lambda_go_2 ? 1 : 0}"
  lambda_go_2_name    = "${local.lambda_go_2 && local.lambda_2_name    != "" ? "${local.service_name}-${local.stage}-${local.lambda_2_name}" : "${local.service_name}-${local.stage}-${local.lambda_2_file_replace}-2" }" //"
  lambda_go_2_runtime = "${local.lambda_go_2 && local.lambda_2_runtime != "" ? local.lambda_2_runtime : "go1.x" }"
  lambda_go_2_handler = "${local.lambda_go_2 && local.lambda_2_handler != "" ? local.lambda_2_handler : local.lambda_go_2_name}"
  lambda_go_2_bin     = "${path.root}/bin/${local.lambda_go_2_name}"
  lambda_go_2_zip     = "${local.lambda_go_2 ? "${path.root}/.terraform/archive_files/${local.lambda_go_2_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_2             = "${contains(split(".", local.lambda_2_file), "py")}"
  lambda_py_2_count       = "${local.lambda_py_2 ? 1 : 0}"
  lambda_py_2_name        = "${local.lambda_py_2 && local.lambda_2_name != "" ? "${local.service_name}-${local.stage}-${local.lambda_2_name}" : "${local.service_name}-${local.stage}-${local.lambda_2_file_replace}-2" }" //"
  lambda_py_2_runtime     = "${local.lambda_py_2 && local.lambda_2_runtime != "" ? local.lambda_2_runtime : "python3.6" }"
  lambda_py_2_handler     = "${local.lambda_py_2 && local.lambda_2_handler != "" ? local.lambda_2_handler : basename(replace(local.lambda_2_file, ".py", ".handler"))}"
  lambda_py_2_source_file = "${local.lambda_py_2 ? local.lambda_2_file : ""}"
  lambda_py_2_zip         = "${local.lambda_py_2 ? "${path.root}/.terraform/archive_files/${local.lambda_py_2_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_2             = "${contains(split(".", local.lambda_2_file), "js")}"
  lambda_js_2_count       = "${local.lambda_js_2 ? 1 : 0}"
  lambda_js_2_name        = "${local.lambda_js_2 && local.lambda_2_name != "" ? "${local.service_name}-${local.stage}-${local.lambda_2_name}" : "${local.service_name}-${local.stage}-${local.lambda_2_file_replace}-2" }" //"
  lambda_js_2_runtime     = "${local.lambda_js_2 && local.lambda_2_runtime != "" ? local.lambda_2_runtime : "nodejs8.10" }"
  lambda_js_2_handler     = "${local.lambda_js_2 && local.lambda_2_handler != "" ? local.lambda_2_handler : basename(replace(local.lambda_2_file, ".js", ".handler"))}"
  lambda_js_2_source_file = "${local.lambda_js_2 ? local.lambda_2_file : ""}"
  lambda_js_2_zip         = "${local.lambda_js_2 ? "${path.root}/.terraform/archive_files/${local.lambda_js_2_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_2_name_computed = "${local.lambda_go_2 ? local.lambda_go_2_name : (local.lambda_py_2 ? local.lambda_py_2_name : (local.lambda_js_2 ? local.lambda_js_2_name : local.default_lambda_name))}"

  // API Gateway
  api_gateway_2                = "${lookup(local.lambda_2, "http", "" ) != "" || lookup(local.lambda_2, "http_path", "") != "" || lookup(local.lambda_2, "http_method", "") != "" || lookup(local.lambda_2, "http_authorizer", "") != "" || lookup(local.lambda_2, "http_stage", "") != ""}"
  api_gateway_2_count          = "${local.api_gateway_2 ? 1 : 0}"
  api_gateway_2_name           = "${local.lambda_2_name_computed}"
  api_gateway_2_path           = "${lookup(local.lambda_2, "http_path", local.lambda_2_name_computed)}"
  api_gateway_2_method         = "${upper(lookup(local.lambda_2, "http_method", "get"))}"
  api_gateway_2_stage          = "${local.stage}"
  api_gateway_2_metrics        = "${lookup(local.lambda_2, "http_metrics", "") != ""}"
  api_gateway_2_logging        = "${lookup(local.lambda_2, "http_logging", "") != ""}"
  api_gateway_2_logging_level  = "${local.api_gateway_2_logging ? "INFO" : "OFF"}"
  api_gateway_2_regional_count = "${local.lambda_2_same_region ? 0 : 1}"
  api_gateway_2_global_count   = "${local.lambda_2_same_region ? 1 : 0}"

  api_gateway_2_authorizer                  = "${lookup(local.lambda_2, "http_authorizer", "")}"
  api_gateway_2_authorizer_count            = "${local.api_gateway_2_authorizer != "" ? 1 : 0}"
  api_gateway_2_authorization               = "${local.api_gateway_2_authorizer != "" ? "CUSTOM" : "NONE"}"
  api_gateway_2_authorizer_full_name        = "${local.service_name}-${local.stage}-${local.api_gateway_2_authorizer}"
  api_gateway_2_authorizer_lambda_arn       = "arn:aws:lambda:${lookup(local.lambda_name_region, local.api_gateway_2_authorizer, "")}:${data.aws_caller_identity.current.account_id}:function:${local.api_gateway_2_authorizer_full_name}"
  api_gateway_2_authorizer_uri              = "arn:aws:apigateway:${local.lambda_2_region}:lambda:path/2015-03-31/functions/${local.api_gateway_2_authorizer_lambda_arn}/invocations"
  api_gateway_2_authorizer_policy_arn       = "${lookup(local.lambda_2, "http_authorizer_policy_arn", "")}"
  api_gateway_2_authorizer_policy_arn_count = "${local.api_gateway_2_authorizer_policy_arn != "" ? 1 : 0}"

  // Cloudwatch Schedule
  cloudwatch_2       = "${lookup(local.lambda_2, "schedule", "" ) != "" || lookup(local.lambda_2, "schedule_rate", "") != ""}"
  cloudwatch_2_count = "${local.cloudwatch_2 ? 1 : 0}"
  cloudwatch_2_name  = "${local.lambda_2_name_computed}"
  cloudwatch_2_rate  = "${lookup(local.lambda_2, "schedule_rate", "rate(1 hour)")}"

  // S3
  s3_2_bucket      = "${lookup(local.lambda_2, "s3_bucket", "")}"
  s3_2_bucket_arn  = "arn:aws:s3:::${local.s3_2_bucket}"
  s3_2_count       = "${local.s3_2_bucket != "" ? 1 : 0}"
  s3_2_prefix      = "${lookup(local.lambda_2, "s3_prefix", "")}"
  s3_2_suffix      = "${lookup(local.lambda_2, "s3_suffix", "")}"
  s3_2_events      = "${lookup(local.lambda_2, "s3_events", local.default_s3_events)}"
  s3_2_events_list = "${split(" ", local.s3_2_events)}"

  // Cloudwatch Event
  cloudwatch_event_2         = "${local.cloudwatch_event_2_pattern != ""}"
  cloudwatch_event_2_count   = "${local.cloudwatch_event_2 ? 1 : 0}"
  cloudwatch_event_2_name    = "${local.lambda_2_name_computed}"
  cloudwatch_event_2_pattern = "${lookup(local.lambda_2, "cloudwatch_event_pattern", "")}"
}

// locals for lambda_3
locals {
  lambda_3 = "${local.functions[3]}"

  // Vars
  lambda_3_file         = "${lookup(local.lambda_3, "file", "")}"
  lambda_3_count        = "${local.lambda_3_file != "" ? 1 : 0}"
  lambda_3_vendor_cmd   = "${lookup(local.lambda_3, "vendor_cmd", "")}"
  lambda_3_test_cmd     = "${lookup(local.lambda_3, "test_cmd", "")}"
  lambda_3_timeout      = "${lookup(local.lambda_3, "timeout", "5")}"
  lambda_3_name         = "${lookup(local.lambda_3, "name", "")}"
  lambda_3_runtime      = "${lookup(local.lambda_3, "runtime", "")}"
  lambda_3_handler      = "${lookup(local.lambda_3, "handler", "")}"
  lambda_3_rebuild      = "${lookup(local.lambda_3, "rebuild", local.default_rebuild) != local.default_rebuild}"
  lambda_3_role_arn     = "${lookup(local.lambda_3, "role_arn", "")}"
  lambda_3_dir          = "${dirname(local.lambda_3_file)}"
  lambda_3_arn          = "arn:aws:lambda:${local.lambda_3_region}:${data.aws_caller_identity.current.account_id}:function:${local.lambda_3_name_computed}"
  lambda_3_file_replace = "${replace(replace(replace(replace(replace(local.lambda_3_file, ".go", ""), ".py", ""), ".js", ""), "/", "-"), "..", "-")}"

  lambda_3_env_keys             = "${lookup(local.lambda_3, "env_keys", "AUTHOR")}"
  lambda_3_env_vals             = "${lookup(local.lambda_3, "env_vals", "rms1000watt")}"
  lambda_3_env_keys_list        = "${split(" ", local.lambda_3_env_keys)}"
  lambda_3_env_vals_list        = "${split(" ", local.lambda_3_env_vals)}"
  lambda_3_env_keys_list_length = "${length(local.lambda_3_env_keys_list)}"
  lambda_3_env_vals_list_length = "${length(local.lambda_3_env_vals_list)}"
  lambda_3_env                  = "${zipmap(local.lambda_3_env_keys_list, local.lambda_3_env_vals_list)}"

  lambda_3_region_in   = "${lookup(local.lambda_3, "region", "")}"
  lambda_3_region      = "${local.lambda_3_region_in != "" ? local.lambda_3_region_in  : data.aws_region.current.name}"
  lambda_3_same_region = "${local.lambda_3_region == data.aws_region.current.name}"

  // Lambda for Golang
  lambda_go_3         = "${contains(split(".", local.lambda_3_file), "go")}"
  lambda_go_3_count   = "${local.lambda_go_3 ? 1 : 0}"
  lambda_go_3_name    = "${local.lambda_go_3 && local.lambda_3_name    != "" ? "${local.service_name}-${local.stage}-${local.lambda_3_name}" : "${local.service_name}-${local.stage}-${local.lambda_3_file_replace}-3" }" //"
  lambda_go_3_runtime = "${local.lambda_go_3 && local.lambda_3_runtime != "" ? local.lambda_3_runtime : "go1.x" }"
  lambda_go_3_handler = "${local.lambda_go_3 && local.lambda_3_handler != "" ? local.lambda_3_handler : local.lambda_go_3_name}"
  lambda_go_3_bin     = "${path.root}/bin/${local.lambda_go_3_name}"
  lambda_go_3_zip     = "${local.lambda_go_3 ? "${path.root}/.terraform/archive_files/${local.lambda_go_3_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_3             = "${contains(split(".", local.lambda_3_file), "py")}"
  lambda_py_3_count       = "${local.lambda_py_3 ? 1 : 0}"
  lambda_py_3_name        = "${local.lambda_py_3 && local.lambda_3_name != "" ? "${local.service_name}-${local.stage}-${local.lambda_3_name}" : "${local.service_name}-${local.stage}-${local.lambda_3_file_replace}-3" }" //"
  lambda_py_3_runtime     = "${local.lambda_py_3 && local.lambda_3_runtime != "" ? local.lambda_3_runtime : "python3.6" }"
  lambda_py_3_handler     = "${local.lambda_py_3 && local.lambda_3_handler != "" ? local.lambda_3_handler : basename(replace(local.lambda_3_file, ".py", ".handler"))}"
  lambda_py_3_source_file = "${local.lambda_py_3 ? local.lambda_3_file : ""}"
  lambda_py_3_zip         = "${local.lambda_py_3 ? "${path.root}/.terraform/archive_files/${local.lambda_py_3_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_3             = "${contains(split(".", local.lambda_3_file), "js")}"
  lambda_js_3_count       = "${local.lambda_js_3 ? 1 : 0}"
  lambda_js_3_name        = "${local.lambda_js_3 && local.lambda_3_name != "" ? "${local.service_name}-${local.stage}-${local.lambda_3_name}" : "${local.service_name}-${local.stage}-${local.lambda_3_file_replace}-3" }" //"
  lambda_js_3_runtime     = "${local.lambda_js_3 && local.lambda_3_runtime != "" ? local.lambda_3_runtime : "nodejs8.10" }"
  lambda_js_3_handler     = "${local.lambda_js_3 && local.lambda_3_handler != "" ? local.lambda_3_handler : basename(replace(local.lambda_3_file, ".js", ".handler"))}"
  lambda_js_3_source_file = "${local.lambda_js_3 ? local.lambda_3_file : ""}"
  lambda_js_3_zip         = "${local.lambda_js_3 ? "${path.root}/.terraform/archive_files/${local.lambda_js_3_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_3_name_computed = "${local.lambda_go_3 ? local.lambda_go_3_name : (local.lambda_py_3 ? local.lambda_py_3_name : (local.lambda_js_3 ? local.lambda_js_3_name : local.default_lambda_name))}"

  // API Gateway
  api_gateway_3                = "${lookup(local.lambda_3, "http", "" ) != "" || lookup(local.lambda_3, "http_path", "") != "" || lookup(local.lambda_3, "http_method", "") != "" || lookup(local.lambda_3, "http_authorizer", "") != "" || lookup(local.lambda_3, "http_stage", "") != ""}"
  api_gateway_3_count          = "${local.api_gateway_3 ? 1 : 0}"
  api_gateway_3_name           = "${local.lambda_3_name_computed}"
  api_gateway_3_path           = "${lookup(local.lambda_3, "http_path", local.lambda_3_name_computed)}"
  api_gateway_3_method         = "${upper(lookup(local.lambda_3, "http_method", "get"))}"
  api_gateway_3_stage          = "${local.stage}"
  api_gateway_3_metrics        = "${lookup(local.lambda_3, "http_metrics", "") != ""}"
  api_gateway_3_logging        = "${lookup(local.lambda_3, "http_logging", "") != ""}"
  api_gateway_3_logging_level  = "${local.api_gateway_3_logging ? "INFO" : "OFF"}"
  api_gateway_3_regional_count = "${local.lambda_3_same_region ? 0 : 1}"
  api_gateway_3_global_count   = "${local.lambda_3_same_region ? 1 : 0}"

  api_gateway_3_authorizer                  = "${lookup(local.lambda_3, "http_authorizer", "")}"
  api_gateway_3_authorizer_count            = "${local.api_gateway_3_authorizer != "" ? 1 : 0}"
  api_gateway_3_authorization               = "${local.api_gateway_3_authorizer != "" ? "CUSTOM" : "NONE"}"
  api_gateway_3_authorizer_full_name        = "${local.service_name}-${local.stage}-${local.api_gateway_3_authorizer}"
  api_gateway_3_authorizer_lambda_arn       = "arn:aws:lambda:${lookup(local.lambda_name_region, local.api_gateway_3_authorizer, "")}:${data.aws_caller_identity.current.account_id}:function:${local.api_gateway_3_authorizer_full_name}"
  api_gateway_3_authorizer_uri              = "arn:aws:apigateway:${local.lambda_3_region}:lambda:path/2015-03-31/functions/${local.api_gateway_3_authorizer_lambda_arn}/invocations"
  api_gateway_3_authorizer_policy_arn       = "${lookup(local.lambda_3, "http_authorizer_policy_arn", "")}"
  api_gateway_3_authorizer_policy_arn_count = "${local.api_gateway_3_authorizer_policy_arn != "" ? 1 : 0}"

  // Cloudwatch Schedule
  cloudwatch_3       = "${lookup(local.lambda_3, "schedule", "" ) != "" || lookup(local.lambda_3, "schedule_rate", "") != ""}"
  cloudwatch_3_count = "${local.cloudwatch_3 ? 1 : 0}"
  cloudwatch_3_name  = "${local.lambda_3_name_computed}"
  cloudwatch_3_rate  = "${lookup(local.lambda_3, "schedule_rate", "rate(1 hour)")}"

  // S3
  s3_3_bucket      = "${lookup(local.lambda_3, "s3_bucket", "")}"
  s3_3_bucket_arn  = "arn:aws:s3:::${local.s3_3_bucket}"
  s3_3_count       = "${local.s3_3_bucket != "" ? 1 : 0}"
  s3_3_prefix      = "${lookup(local.lambda_3, "s3_prefix", "")}"
  s3_3_suffix      = "${lookup(local.lambda_3, "s3_suffix", "")}"
  s3_3_events      = "${lookup(local.lambda_3, "s3_events", local.default_s3_events)}"
  s3_3_events_list = "${split(" ", local.s3_3_events)}"

  // Cloudwatch Event
  cloudwatch_event_3         = "${local.cloudwatch_event_3_pattern != ""}"
  cloudwatch_event_3_count   = "${local.cloudwatch_event_3 ? 1 : 0}"
  cloudwatch_event_3_name    = "${local.lambda_3_name_computed}"
  cloudwatch_event_3_pattern = "${lookup(local.lambda_3, "cloudwatch_event_pattern", "")}"
}

// locals for lambda_4
locals {
  lambda_4 = "${local.functions[4]}"

  // Vars
  lambda_4_file         = "${lookup(local.lambda_4, "file", "")}"
  lambda_4_count        = "${local.lambda_4_file != "" ? 1 : 0}"
  lambda_4_vendor_cmd   = "${lookup(local.lambda_4, "vendor_cmd", "")}"
  lambda_4_test_cmd     = "${lookup(local.lambda_4, "test_cmd", "")}"
  lambda_4_timeout      = "${lookup(local.lambda_4, "timeout", "5")}"
  lambda_4_name         = "${lookup(local.lambda_4, "name", "")}"
  lambda_4_runtime      = "${lookup(local.lambda_4, "runtime", "")}"
  lambda_4_handler      = "${lookup(local.lambda_4, "handler", "")}"
  lambda_4_rebuild      = "${lookup(local.lambda_4, "rebuild", local.default_rebuild) != local.default_rebuild}"
  lambda_4_role_arn     = "${lookup(local.lambda_4, "role_arn", "")}"
  lambda_4_dir          = "${dirname(local.lambda_4_file)}"
  lambda_4_arn          = "arn:aws:lambda:${local.lambda_4_region}:${data.aws_caller_identity.current.account_id}:function:${local.lambda_4_name_computed}"
  lambda_4_file_replace = "${replace(replace(replace(replace(replace(local.lambda_4_file, ".go", ""), ".py", ""), ".js", ""), "/", "-"), "..", "-")}"

  lambda_4_env_keys             = "${lookup(local.lambda_4, "env_keys", "AUTHOR")}"
  lambda_4_env_vals             = "${lookup(local.lambda_4, "env_vals", "rms1000watt")}"
  lambda_4_env_keys_list        = "${split(" ", local.lambda_4_env_keys)}"
  lambda_4_env_vals_list        = "${split(" ", local.lambda_4_env_vals)}"
  lambda_4_env_keys_list_length = "${length(local.lambda_4_env_keys_list)}"
  lambda_4_env_vals_list_length = "${length(local.lambda_4_env_vals_list)}"
  lambda_4_env                  = "${zipmap(local.lambda_4_env_keys_list, local.lambda_4_env_vals_list)}"

  lambda_4_region_in   = "${lookup(local.lambda_4, "region", "")}"
  lambda_4_region      = "${local.lambda_4_region_in != "" ? local.lambda_4_region_in  : data.aws_region.current.name}"
  lambda_4_same_region = "${local.lambda_4_region == data.aws_region.current.name}"

  // Lambda for Golang
  lambda_go_4         = "${contains(split(".", local.lambda_4_file), "go")}"
  lambda_go_4_count   = "${local.lambda_go_4 ? 1 : 0}"
  lambda_go_4_name    = "${local.lambda_go_4 && local.lambda_4_name    != "" ? "${local.service_name}-${local.stage}-${local.lambda_4_name}" : "${local.service_name}-${local.stage}-${local.lambda_4_file_replace}-4" }" //"
  lambda_go_4_runtime = "${local.lambda_go_4 && local.lambda_4_runtime != "" ? local.lambda_4_runtime : "go1.x" }"
  lambda_go_4_handler = "${local.lambda_go_4 && local.lambda_4_handler != "" ? local.lambda_4_handler : local.lambda_go_4_name}"
  lambda_go_4_bin     = "${path.root}/bin/${local.lambda_go_4_name}"
  lambda_go_4_zip     = "${local.lambda_go_4 ? "${path.root}/.terraform/archive_files/${local.lambda_go_4_name}-lambda.zip" : ""}" //"

  // Lambda for Python
  lambda_py_4             = "${contains(split(".", local.lambda_4_file), "py")}"
  lambda_py_4_count       = "${local.lambda_py_4 ? 1 : 0}"
  lambda_py_4_name        = "${local.lambda_py_4 && local.lambda_4_name != "" ? "${local.service_name}-${local.stage}-${local.lambda_4_name}" : "${local.service_name}-${local.stage}-${local.lambda_4_file_replace}-4" }" //"
  lambda_py_4_runtime     = "${local.lambda_py_4 && local.lambda_4_runtime != "" ? local.lambda_4_runtime : "python3.6" }"
  lambda_py_4_handler     = "${local.lambda_py_4 && local.lambda_4_handler != "" ? local.lambda_4_handler : basename(replace(local.lambda_4_file, ".py", ".handler"))}"
  lambda_py_4_source_file = "${local.lambda_py_4 ? local.lambda_4_file : ""}"
  lambda_py_4_zip         = "${local.lambda_py_4 ? "${path.root}/.terraform/archive_files/${local.lambda_py_4_name}-lambda.zip" : ""}" //"

  // Lambda for JS
  lambda_js_4             = "${contains(split(".", local.lambda_4_file), "js")}"
  lambda_js_4_count       = "${local.lambda_js_4 ? 1 : 0}"
  lambda_js_4_name        = "${local.lambda_js_4 && local.lambda_4_name != "" ? "${local.service_name}-${local.stage}-${local.lambda_4_name}" : "${local.service_name}-${local.stage}-${local.lambda_4_file_replace}-4" }" //"
  lambda_js_4_runtime     = "${local.lambda_js_4 && local.lambda_4_runtime != "" ? local.lambda_4_runtime : "nodejs8.10" }"
  lambda_js_4_handler     = "${local.lambda_js_4 && local.lambda_4_handler != "" ? local.lambda_4_handler : basename(replace(local.lambda_4_file, ".js", ".handler"))}"
  lambda_js_4_source_file = "${local.lambda_js_4 ? local.lambda_4_file : ""}"
  lambda_js_4_zip         = "${local.lambda_js_4 ? "${path.root}/.terraform/archive_files/${local.lambda_js_4_name}-lambda.zip" : ""}" //"

  // Lambda Generic
  lambda_4_name_computed = "${local.lambda_go_4 ? local.lambda_go_4_name : (local.lambda_py_4 ? local.lambda_py_4_name : (local.lambda_js_4 ? local.lambda_js_4_name : local.default_lambda_name))}"

  // API Gateway
  api_gateway_4                = "${lookup(local.lambda_4, "http", "" ) != "" || lookup(local.lambda_4, "http_path", "") != "" || lookup(local.lambda_4, "http_method", "") != "" || lookup(local.lambda_4, "http_authorizer", "") != "" || lookup(local.lambda_4, "http_stage", "") != ""}"
  api_gateway_4_count          = "${local.api_gateway_4 ? 1 : 0}"
  api_gateway_4_name           = "${local.lambda_4_name_computed}"
  api_gateway_4_path           = "${lookup(local.lambda_4, "http_path", local.lambda_4_name_computed)}"
  api_gateway_4_method         = "${upper(lookup(local.lambda_4, "http_method", "get"))}"
  api_gateway_4_stage          = "${local.stage}"
  api_gateway_4_metrics        = "${lookup(local.lambda_4, "http_metrics", "") != ""}"
  api_gateway_4_logging        = "${lookup(local.lambda_4, "http_logging", "") != ""}"
  api_gateway_4_logging_level  = "${local.api_gateway_4_logging ? "INFO" : "OFF"}"
  api_gateway_4_regional_count = "${local.lambda_4_same_region ? 0 : 1}"
  api_gateway_4_global_count   = "${local.lambda_4_same_region ? 1 : 0}"

  api_gateway_4_authorizer                  = "${lookup(local.lambda_4, "http_authorizer", "")}"
  api_gateway_4_authorizer_count            = "${local.api_gateway_4_authorizer != "" ? 1 : 0}"
  api_gateway_4_authorization               = "${local.api_gateway_4_authorizer != "" ? "CUSTOM" : "NONE"}"
  api_gateway_4_authorizer_full_name        = "${local.service_name}-${local.stage}-${local.api_gateway_4_authorizer}"
  api_gateway_4_authorizer_lambda_arn       = "arn:aws:lambda:${lookup(local.lambda_name_region, local.api_gateway_4_authorizer, "")}:${data.aws_caller_identity.current.account_id}:function:${local.api_gateway_4_authorizer_full_name}"
  api_gateway_4_authorizer_uri              = "arn:aws:apigateway:${local.lambda_4_region}:lambda:path/2015-03-31/functions/${local.api_gateway_4_authorizer_lambda_arn}/invocations"
  api_gateway_4_authorizer_policy_arn       = "${lookup(local.lambda_4, "http_authorizer_policy_arn", "")}"
  api_gateway_4_authorizer_policy_arn_count = "${local.api_gateway_4_authorizer_policy_arn != "" ? 1 : 0}"

  // Cloudwatch Schedule
  cloudwatch_4       = "${lookup(local.lambda_4, "schedule", "" ) != "" || lookup(local.lambda_4, "schedule_rate", "") != ""}"
  cloudwatch_4_count = "${local.cloudwatch_4 ? 1 : 0}"
  cloudwatch_4_name  = "${local.lambda_4_name_computed}"
  cloudwatch_4_rate  = "${lookup(local.lambda_4, "schedule_rate", "rate(1 hour)")}"

  // S3
  s3_4_bucket      = "${lookup(local.lambda_4, "s3_bucket", "")}"
  s3_4_bucket_arn  = "arn:aws:s3:::${local.s3_4_bucket}"
  s3_4_count       = "${local.s3_4_bucket != "" ? 1 : 0}"
  s3_4_prefix      = "${lookup(local.lambda_4, "s3_prefix", "")}"
  s3_4_suffix      = "${lookup(local.lambda_4, "s3_suffix", "")}"
  s3_4_events      = "${lookup(local.lambda_4, "s3_events", local.default_s3_events)}"
  s3_4_events_list = "${split(" ", local.s3_4_events)}"

  // Cloudwatch Event
  cloudwatch_event_4         = "${local.cloudwatch_event_4_pattern != ""}"
  cloudwatch_event_4_count   = "${local.cloudwatch_event_4 ? 1 : 0}"
  cloudwatch_event_4_name    = "${local.lambda_4_name_computed}"
  cloudwatch_event_4_pattern = "${lookup(local.lambda_4, "cloudwatch_event_pattern", "")}"
}

locals {
  lambda_name_region {
    "${local.lambda_0_name}" = "${local.lambda_0_region}",
    "${local.lambda_1_name}" = "${local.lambda_1_region}",
    "${local.lambda_2_name}" = "${local.lambda_2_region}",
    "${local.lambda_3_name}" = "${local.lambda_3_region}",
    "${local.lambda_4_name}" = "${local.lambda_4_region}",
  }
}
