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

output "api_gateway_invoke_urls" {
  value {
    url_0 = "${aws_api_gateway_deployment.0.*.invoke_url}"
    url_1 = "${aws_api_gateway_deployment.1.*.invoke_url}"
    url_2 = "${aws_api_gateway_deployment.2.*.invoke_url}"
    url_3 = "${aws_api_gateway_deployment.3.*.invoke_url}"
    url_4 = "${aws_api_gateway_deployment.4.*.invoke_url}"
    url_5 = "${aws_api_gateway_deployment.5.*.invoke_url}"
    url_6 = "${aws_api_gateway_deployment.6.*.invoke_url}"
    url_7 = "${aws_api_gateway_deployment.7.*.invoke_url}"
    url_8 = "${aws_api_gateway_deployment.8.*.invoke_url}"
    url_9 = "${aws_api_gateway_deployment.9.*.invoke_url}"
  }
}

output "api_gateway_id" {
  value = "${aws_api_gateway_rest_api.global.*.id}"
}

output "api_gateway_root_resource_id" {
  value = "${aws_api_gateway_rest_api.global.*.root_resource_id}"
}
