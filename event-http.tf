// resource "aws_api_gateway_rest_api" "0" {
//   name = "${local.api_gateway_0_name}"
//   count = "${local.api_gateway_0_new ? 1 : 0}"
// }
// resource "aws_api_gateway_resource" "0" {
//   rest_api_id = "${local.api_gateway_0_new ? aws_api_gateway_rest_api.0.id : local.event_0["api_gateway_id"]}"
//   parent_id   = "${local.api_gateway_0_new ? aws_api_gateway_rest_api.0.root_resource_id : local.event_0["api_gateway_root_resource_id"]}"
//   path_part   = "${local.api_gateway_0_path}"
//   count = "${local.api_gateway_0_count}"
// }
// resource "aws_api_gateway_method" "0" {
//   rest_api_id   = "${local.api_gateway_0_new ? aws_api_gateway_rest_api.0.id : local.event_0["api_gateway_id"]}"
//   resource_id   = "${aws_api_gateway_resource.0.id}"
//   http_method   = "${local.api_gateway_0_method}"
//   authorization = "${local.api_gateway_0_authorization}"
//   count = "${local.api_gateway_0_count}"
// }
// resource "aws_api_gateway_integration" "0_go" {
//   rest_api_id = "${local.api_gateway_0_new ? aws_api_gateway_rest_api.0.id : local.event_0["api_gateway_id"]}"
//   resource_id = "${aws_api_gateway_method.0.resource_id}"
//   http_method = "${aws_api_gateway_method.0.http_method}"
//   type                    = "AWS_PROXY"
//   integration_http_method = "${local.api_gateway_0_method}"
//   uri                     = "${aws_lambda_function.lambda_go.invoke_arn}"
//   count = "${local.lambda_go_count + local.api_gateway_0_count == 2 ? 1 : 0}"
// }
// resource "aws_api_gateway_integration" "0_py" {
//   rest_api_id = "${local.api_gateway_0_new ? aws_api_gateway_rest_api.0.id : local.event_0["api_gateway_id"]}"
//   resource_id = "${aws_api_gateway_method.0.resource_id}"
//   http_method = "${aws_api_gateway_method.0.http_method}"
//   type                    = "AWS_PROXY"
//   integration_http_method = "${local.api_gateway_0_method}"
//   uri                     = "${aws_lambda_function.lambda_py.invoke_arn}"
//   count = "${local.lambda_py_count + local.api_gateway_0_count == 2 ? 1 : 0}"
// }
// resource "aws_api_gateway_integration" "0_js" {
//   rest_api_id = "${local.api_gateway_0_new ? aws_api_gateway_rest_api.0.id : local.event_0["api_gateway_id"]}"
//   resource_id = "${aws_api_gateway_method.0.resource_id}"
//   http_method = "${aws_api_gateway_method.0.http_method}"
//   type                    = "AWS_PROXY"
//   integration_http_method = "${local.api_gateway_0_method}"
//   uri                     = "${aws_lambda_function.lambda_js.invoke_arn}"
//   count = "${local.lambda_js_count + local.api_gateway_0_count == 2 ? 1 : 0}"
// }
// resource "aws_api_gateway_deployment" "0" {
//   depends_on = [
//     "aws_api_gateway_integration.0_go",
//     "aws_api_gateway_integration.0_py",
//     "aws_api_gateway_integration.0_js",
//   ]
//   rest_api_id = "${aws_api_gateway_rest_api.0.id}"
//   stage_name  = "${local.api_gateway_0_stage}"
//   variables {
//     deployed_at = "${timestamp()}"
//   }
//   count = "${local.api_gateway_0_count}"
// }
// resource "aws_lambda_permission" "0_go" {
//   statement_id  = "AllowAPIGatewayInvoke"
//   action        = "lambda:InvokeFunction"
//   principal     = "apigateway.amazonaws.com"
//   function_name = "${aws_lambda_function.lambda_go.arn}"
//   source_arn    = "${aws_api_gateway_deployment.0.execution_arn}/*/*"
//   count = "${local.lambda_go_count + local.api_gateway_0_count == 2 ? 1 : 0}"
// }
// resource "aws_lambda_permission" "0_py" {
//   statement_id  = "AllowAPIGatewayInvoke"
//   action        = "lambda:InvokeFunction"
//   principal     = "apigateway.amazonaws.com"
//   function_name = "${aws_lambda_function.lambda_py.arn}"
//   source_arn    = "${aws_api_gateway_deployment.0.execution_arn}/*/*"
//   count = "${local.lambda_py_count + local.api_gateway_0_count == 2 ? 1 : 0}"
// }
// resource "aws_lambda_permission" "0_js" {
//   statement_id  = "AllowAPIGatewayInvoke"
//   action        = "lambda:InvokeFunction"
//   principal     = "apigateway.amazonaws.com"
//   function_name = "${aws_lambda_function.lambda_js.arn}"
//   source_arn    = "${aws_api_gateway_deployment.0.execution_arn}/*/*"
//   count = "${local.lambda_js_count + local.api_gateway_0_count == 2 ? 1 : 0}"
// }

