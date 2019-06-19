// GENERATED FILE: DO NOT EDIT

output "lambda_arns" {
  value {
    arn_0 = "${compact(concat(aws_lambda_function.lambda_go_0.*.arn, aws_lambda_function.lambda_py_0.*.arn, aws_lambda_function.lambda_js_0.*.arn))}"
    arn_1 = "${compact(concat(aws_lambda_function.lambda_go_1.*.arn, aws_lambda_function.lambda_py_1.*.arn, aws_lambda_function.lambda_js_1.*.arn))}"
    arn_2 = "${compact(concat(aws_lambda_function.lambda_go_2.*.arn, aws_lambda_function.lambda_py_2.*.arn, aws_lambda_function.lambda_js_2.*.arn))}"
    arn_3 = "${compact(concat(aws_lambda_function.lambda_go_3.*.arn, aws_lambda_function.lambda_py_3.*.arn, aws_lambda_function.lambda_js_3.*.arn))}"
    arn_4 = "${compact(concat(aws_lambda_function.lambda_go_4.*.arn, aws_lambda_function.lambda_py_4.*.arn, aws_lambda_function.lambda_js_4.*.arn))}"
  }
}

output "api_gateway_id" {
  value = "${aws_api_gateway_rest_api.global.*.id}"
}

output "api_gateway_root_resource_id" {
  value = "${aws_api_gateway_rest_api.global.*.root_resource_id}"
}

output "http_urls" {
  value {
    url_0 = "${formatlist("%s/%s", compact(concat(aws_api_gateway_deployment.0_global.*.invoke_url, aws_api_gateway_deployment.0_regional.*.invoke_url)), (local.api_gateway_0_path != local.default_lambda_name ? local.api_gateway_0_path : "" ))}"
    url_1 = "${formatlist("%s/%s", compact(concat(aws_api_gateway_deployment.1_global.*.invoke_url, aws_api_gateway_deployment.1_regional.*.invoke_url)), (local.api_gateway_1_path != local.default_lambda_name ? local.api_gateway_1_path : "" ))}"
    url_2 = "${formatlist("%s/%s", compact(concat(aws_api_gateway_deployment.2_global.*.invoke_url, aws_api_gateway_deployment.2_regional.*.invoke_url)), (local.api_gateway_2_path != local.default_lambda_name ? local.api_gateway_2_path : "" ))}"
    url_3 = "${formatlist("%s/%s", compact(concat(aws_api_gateway_deployment.3_global.*.invoke_url, aws_api_gateway_deployment.3_regional.*.invoke_url)), (local.api_gateway_3_path != local.default_lambda_name ? local.api_gateway_3_path : "" ))}"
    url_4 = "${formatlist("%s/%s", compact(concat(aws_api_gateway_deployment.4_global.*.invoke_url, aws_api_gateway_deployment.4_regional.*.invoke_url)), (local.api_gateway_4_path != local.default_lambda_name ? local.api_gateway_4_path : "" ))}"
  }
}
