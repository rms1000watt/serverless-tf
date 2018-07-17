output "api_gateway_id" {
  value = "${module.serverless.api_gateway_id}"
}

output "api_gateway_invoke_urls" {
  value = "${module.serverless.api_gateway_invoke_urls}"
}

output "api_gateway_root_resource_id" {
  value = "${module.serverless.api_gateway_root_resource_id}"
}

output "lambda_arns" {
  value = "${module.serverless.lambda_arns}"
}
