output "lambda_names" {
  value = "${list(local.lambda_0_name_computed)}"
}

// output "api_gateway_0_invoke_url" {
//   value = "${aws_api_gateway_deployment.0.*.invoke_url}"
// }


// output "api_gateway_0_new_id" {
//   value = "${aws_api_gateway_rest_api.0.*.id}"
// }


// output "api_gateway_0_new_root_resource_id" {
//   value = "${aws_api_gateway_rest_api.0.*.root_resource_id}"
// }

