// GENERATED FILE: DO NOT EDIT

output "lambda_arns" {
  value {
    arn_0 = "${compact(flatten(list(aws_lambda_function.lambda_go_0.*.arn, aws_lambda_function.lambda_py_0.*.arn, aws_lambda_function.lambda_js_0.*.arn)))}"
    arn_1 = "${compact(flatten(list(aws_lambda_function.lambda_go_1.*.arn, aws_lambda_function.lambda_py_1.*.arn, aws_lambda_function.lambda_js_1.*.arn)))}"
    arn_2 = "${compact(flatten(list(aws_lambda_function.lambda_go_2.*.arn, aws_lambda_function.lambda_py_2.*.arn, aws_lambda_function.lambda_js_2.*.arn)))}"
    arn_3 = "${compact(flatten(list(aws_lambda_function.lambda_go_3.*.arn, aws_lambda_function.lambda_py_3.*.arn, aws_lambda_function.lambda_js_3.*.arn)))}"
    arn_4 = "${compact(flatten(list(aws_lambda_function.lambda_go_4.*.arn, aws_lambda_function.lambda_py_4.*.arn, aws_lambda_function.lambda_js_4.*.arn)))}"
    arn_5 = "${compact(flatten(list(aws_lambda_function.lambda_go_5.*.arn, aws_lambda_function.lambda_py_5.*.arn, aws_lambda_function.lambda_js_5.*.arn)))}"
    arn_6 = "${compact(flatten(list(aws_lambda_function.lambda_go_6.*.arn, aws_lambda_function.lambda_py_6.*.arn, aws_lambda_function.lambda_js_6.*.arn)))}"
    arn_7 = "${compact(flatten(list(aws_lambda_function.lambda_go_7.*.arn, aws_lambda_function.lambda_py_7.*.arn, aws_lambda_function.lambda_js_7.*.arn)))}"
    arn_8 = "${compact(flatten(list(aws_lambda_function.lambda_go_8.*.arn, aws_lambda_function.lambda_py_8.*.arn, aws_lambda_function.lambda_js_8.*.arn)))}"
    arn_9 = "${compact(flatten(list(aws_lambda_function.lambda_go_9.*.arn, aws_lambda_function.lambda_py_9.*.arn, aws_lambda_function.lambda_js_9.*.arn)))}"
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
    url_0 = "${formatlist("%s/%s", aws_api_gateway_deployment.0.*.invoke_url, (local.api_gateway_0_path != local.default_lambda_name ? local.api_gateway_0_path : "" ))}"
    url_1 = "${formatlist("%s/%s", aws_api_gateway_deployment.1.*.invoke_url, (local.api_gateway_1_path != local.default_lambda_name ? local.api_gateway_1_path : "" ))}"
    url_2 = "${formatlist("%s/%s", aws_api_gateway_deployment.2.*.invoke_url, (local.api_gateway_2_path != local.default_lambda_name ? local.api_gateway_2_path : "" ))}"
    url_3 = "${formatlist("%s/%s", aws_api_gateway_deployment.3.*.invoke_url, (local.api_gateway_3_path != local.default_lambda_name ? local.api_gateway_3_path : "" ))}"
    url_4 = "${formatlist("%s/%s", aws_api_gateway_deployment.4.*.invoke_url, (local.api_gateway_4_path != local.default_lambda_name ? local.api_gateway_4_path : "" ))}"
    url_5 = "${formatlist("%s/%s", aws_api_gateway_deployment.5.*.invoke_url, (local.api_gateway_5_path != local.default_lambda_name ? local.api_gateway_5_path : "" ))}"
    url_6 = "${formatlist("%s/%s", aws_api_gateway_deployment.6.*.invoke_url, (local.api_gateway_6_path != local.default_lambda_name ? local.api_gateway_6_path : "" ))}"
    url_7 = "${formatlist("%s/%s", aws_api_gateway_deployment.7.*.invoke_url, (local.api_gateway_7_path != local.default_lambda_name ? local.api_gateway_7_path : "" ))}"
    url_8 = "${formatlist("%s/%s", aws_api_gateway_deployment.8.*.invoke_url, (local.api_gateway_8_path != local.default_lambda_name ? local.api_gateway_8_path : "" ))}"
    url_9 = "${formatlist("%s/%s", aws_api_gateway_deployment.9.*.invoke_url, (local.api_gateway_9_path != local.default_lambda_name ? local.api_gateway_9_path : "" ))}"
  }
}
