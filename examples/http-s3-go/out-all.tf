output "api_gateway_id" {
  value = "${module.serverless.api_gateway_id}"
}

output "api_gateway_root_resource_id" {
  value = "${module.serverless.api_gateway_root_resource_id}"
}

output "lambda_arns" {
  value = "${module.serverless.lambda_arns}"
}

output "http_urls" {
  value = "${module.serverless.http_urls}"
}

output "bucket_name" {
  value = "${local.bucket_name}"
}
