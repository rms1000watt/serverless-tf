// GENERATED FILE: DO NOT EDIT

resource "aws_api_gateway_method" "0_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.0_global.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "0_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.0_global.id}"
  http_method = "${aws_api_gateway_method.0_options_global.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "0_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.0_global.id}"
  http_method = "${aws_api_gateway_method.0_options_global.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.0_options_global"]

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "0_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.0_global.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.0_options_global"]

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "0_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.0_regional.id}"
  resource_id = "${aws_api_gateway_resource.0_regional.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "0_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.0_regional.id}"
  resource_id = "${aws_api_gateway_resource.0_regional.id}"
  http_method = "${aws_api_gateway_method.0_options_regional.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "0_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.0_regional.id}"
  resource_id = "${aws_api_gateway_resource.0_regional.id}"
  http_method = "${aws_api_gateway_method.0_options_regional.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.0_options_regional"]

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "0_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.0_regional.id}"
  resource_id = "${aws_api_gateway_resource.0_regional.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.0_options_regional"]

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "1_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.1_global.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "1_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.1_global.id}"
  http_method = "${aws_api_gateway_method.1_options_global.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "1_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.1_global.id}"
  http_method = "${aws_api_gateway_method.1_options_global.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.1_options_global"]

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "1_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.1_global.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.1_options_global"]

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "1_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.1_regional.id}"
  resource_id = "${aws_api_gateway_resource.1_regional.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "1_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.1_regional.id}"
  resource_id = "${aws_api_gateway_resource.1_regional.id}"
  http_method = "${aws_api_gateway_method.1_options_regional.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "1_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.1_regional.id}"
  resource_id = "${aws_api_gateway_resource.1_regional.id}"
  http_method = "${aws_api_gateway_method.1_options_regional.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.1_options_regional"]

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "1_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.1_regional.id}"
  resource_id = "${aws_api_gateway_resource.1_regional.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.1_options_regional"]

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "2_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.2_global.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "2_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.2_global.id}"
  http_method = "${aws_api_gateway_method.2_options_global.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "2_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.2_global.id}"
  http_method = "${aws_api_gateway_method.2_options_global.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.2_options_global"]

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "2_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.2_global.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.2_options_global"]

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "2_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.2_regional.id}"
  resource_id = "${aws_api_gateway_resource.2_regional.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "2_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.2_regional.id}"
  resource_id = "${aws_api_gateway_resource.2_regional.id}"
  http_method = "${aws_api_gateway_method.2_options_regional.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "2_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.2_regional.id}"
  resource_id = "${aws_api_gateway_resource.2_regional.id}"
  http_method = "${aws_api_gateway_method.2_options_regional.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.2_options_regional"]

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "2_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.2_regional.id}"
  resource_id = "${aws_api_gateway_resource.2_regional.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.2_options_regional"]

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "3_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.3_global.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "3_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.3_global.id}"
  http_method = "${aws_api_gateway_method.3_options_global.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "3_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.3_global.id}"
  http_method = "${aws_api_gateway_method.3_options_global.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.3_options_global"]

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "3_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.3_global.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.3_options_global"]

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "3_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.3_regional.id}"
  resource_id = "${aws_api_gateway_resource.3_regional.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "3_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.3_regional.id}"
  resource_id = "${aws_api_gateway_resource.3_regional.id}"
  http_method = "${aws_api_gateway_method.3_options_regional.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "3_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.3_regional.id}"
  resource_id = "${aws_api_gateway_resource.3_regional.id}"
  http_method = "${aws_api_gateway_method.3_options_regional.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.3_options_regional"]

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "3_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.3_regional.id}"
  resource_id = "${aws_api_gateway_resource.3_regional.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.3_options_regional"]

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "4_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.4_global.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "4_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.4_global.id}"
  http_method = "${aws_api_gateway_method.4_options_global.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "4_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.4_global.id}"
  http_method = "${aws_api_gateway_method.4_options_global.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.4_options_global"]

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "4_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.4_global.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.4_options_global"]

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "4_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.4_regional.id}"
  resource_id = "${aws_api_gateway_resource.4_regional.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "4_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.4_regional.id}"
  resource_id = "${aws_api_gateway_resource.4_regional.id}"
  http_method = "${aws_api_gateway_method.4_options_regional.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "4_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.4_regional.id}"
  resource_id = "${aws_api_gateway_resource.4_regional.id}"
  http_method = "${aws_api_gateway_method.4_options_regional.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.4_options_regional"]

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "4_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.4_regional.id}"
  resource_id = "${aws_api_gateway_resource.4_regional.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.4_options_regional"]

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "5_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.5_global.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.5"
  count    = "${local.api_gateway_5_count + local.api_gateway_5_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "5_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.5_global.id}"
  http_method = "${aws_api_gateway_method.5_options_global.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.5"
  count    = "${local.api_gateway_5_count + local.api_gateway_5_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "5_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.5_global.id}"
  http_method = "${aws_api_gateway_method.5_options_global.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.5_options_global"]

  provider = "aws.5"
  count    = "${local.api_gateway_5_count + local.api_gateway_5_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "5_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.5_global.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.5_options_global"]

  provider = "aws.5"
  count    = "${local.api_gateway_5_count + local.api_gateway_5_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "5_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.5_regional.id}"
  resource_id = "${aws_api_gateway_resource.5_regional.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.5"
  count    = "${local.api_gateway_5_count + local.api_gateway_5_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "5_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.5_regional.id}"
  resource_id = "${aws_api_gateway_resource.5_regional.id}"
  http_method = "${aws_api_gateway_method.5_options_regional.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.5"
  count    = "${local.api_gateway_5_count + local.api_gateway_5_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "5_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.5_regional.id}"
  resource_id = "${aws_api_gateway_resource.5_regional.id}"
  http_method = "${aws_api_gateway_method.5_options_regional.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.5_options_regional"]

  provider = "aws.5"
  count    = "${local.api_gateway_5_count + local.api_gateway_5_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "5_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.5_regional.id}"
  resource_id = "${aws_api_gateway_resource.5_regional.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.5_options_regional"]

  provider = "aws.5"
  count    = "${local.api_gateway_5_count + local.api_gateway_5_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "6_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.6_global.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.6"
  count    = "${local.api_gateway_6_count + local.api_gateway_6_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "6_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.6_global.id}"
  http_method = "${aws_api_gateway_method.6_options_global.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.6"
  count    = "${local.api_gateway_6_count + local.api_gateway_6_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "6_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.6_global.id}"
  http_method = "${aws_api_gateway_method.6_options_global.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.6_options_global"]

  provider = "aws.6"
  count    = "${local.api_gateway_6_count + local.api_gateway_6_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "6_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.6_global.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.6_options_global"]

  provider = "aws.6"
  count    = "${local.api_gateway_6_count + local.api_gateway_6_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "6_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.6_regional.id}"
  resource_id = "${aws_api_gateway_resource.6_regional.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.6"
  count    = "${local.api_gateway_6_count + local.api_gateway_6_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "6_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.6_regional.id}"
  resource_id = "${aws_api_gateway_resource.6_regional.id}"
  http_method = "${aws_api_gateway_method.6_options_regional.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.6"
  count    = "${local.api_gateway_6_count + local.api_gateway_6_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "6_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.6_regional.id}"
  resource_id = "${aws_api_gateway_resource.6_regional.id}"
  http_method = "${aws_api_gateway_method.6_options_regional.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.6_options_regional"]

  provider = "aws.6"
  count    = "${local.api_gateway_6_count + local.api_gateway_6_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "6_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.6_regional.id}"
  resource_id = "${aws_api_gateway_resource.6_regional.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.6_options_regional"]

  provider = "aws.6"
  count    = "${local.api_gateway_6_count + local.api_gateway_6_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "7_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.7_global.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.7"
  count    = "${local.api_gateway_7_count + local.api_gateway_7_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "7_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.7_global.id}"
  http_method = "${aws_api_gateway_method.7_options_global.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.7"
  count    = "${local.api_gateway_7_count + local.api_gateway_7_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "7_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.7_global.id}"
  http_method = "${aws_api_gateway_method.7_options_global.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.7_options_global"]

  provider = "aws.7"
  count    = "${local.api_gateway_7_count + local.api_gateway_7_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "7_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.7_global.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.7_options_global"]

  provider = "aws.7"
  count    = "${local.api_gateway_7_count + local.api_gateway_7_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "7_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.7_regional.id}"
  resource_id = "${aws_api_gateway_resource.7_regional.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.7"
  count    = "${local.api_gateway_7_count + local.api_gateway_7_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "7_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.7_regional.id}"
  resource_id = "${aws_api_gateway_resource.7_regional.id}"
  http_method = "${aws_api_gateway_method.7_options_regional.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.7"
  count    = "${local.api_gateway_7_count + local.api_gateway_7_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "7_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.7_regional.id}"
  resource_id = "${aws_api_gateway_resource.7_regional.id}"
  http_method = "${aws_api_gateway_method.7_options_regional.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.7_options_regional"]

  provider = "aws.7"
  count    = "${local.api_gateway_7_count + local.api_gateway_7_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "7_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.7_regional.id}"
  resource_id = "${aws_api_gateway_resource.7_regional.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.7_options_regional"]

  provider = "aws.7"
  count    = "${local.api_gateway_7_count + local.api_gateway_7_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "8_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.8_global.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.8"
  count    = "${local.api_gateway_8_count + local.api_gateway_8_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "8_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.8_global.id}"
  http_method = "${aws_api_gateway_method.8_options_global.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.8"
  count    = "${local.api_gateway_8_count + local.api_gateway_8_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "8_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.8_global.id}"
  http_method = "${aws_api_gateway_method.8_options_global.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.8_options_global"]

  provider = "aws.8"
  count    = "${local.api_gateway_8_count + local.api_gateway_8_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "8_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.8_global.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.8_options_global"]

  provider = "aws.8"
  count    = "${local.api_gateway_8_count + local.api_gateway_8_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "8_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.8_regional.id}"
  resource_id = "${aws_api_gateway_resource.8_regional.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.8"
  count    = "${local.api_gateway_8_count + local.api_gateway_8_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "8_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.8_regional.id}"
  resource_id = "${aws_api_gateway_resource.8_regional.id}"
  http_method = "${aws_api_gateway_method.8_options_regional.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.8"
  count    = "${local.api_gateway_8_count + local.api_gateway_8_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "8_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.8_regional.id}"
  resource_id = "${aws_api_gateway_resource.8_regional.id}"
  http_method = "${aws_api_gateway_method.8_options_regional.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.8_options_regional"]

  provider = "aws.8"
  count    = "${local.api_gateway_8_count + local.api_gateway_8_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "8_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.8_regional.id}"
  resource_id = "${aws_api_gateway_resource.8_regional.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.8_options_regional"]

  provider = "aws.8"
  count    = "${local.api_gateway_8_count + local.api_gateway_8_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "9_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.9_global.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.9"
  count    = "${local.api_gateway_9_count + local.api_gateway_9_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "9_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.9_global.id}"
  http_method = "${aws_api_gateway_method.9_options_global.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.9"
  count    = "${local.api_gateway_9_count + local.api_gateway_9_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "9_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.9_global.id}"
  http_method = "${aws_api_gateway_method.9_options_global.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.9_options_global"]

  provider = "aws.9"
  count    = "${local.api_gateway_9_count + local.api_gateway_9_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "9_options_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  resource_id = "${aws_api_gateway_resource.9_global.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.9_options_global"]

  provider = "aws.9"
  count    = "${local.api_gateway_9_count + local.api_gateway_9_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "9_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.9_regional.id}"
  resource_id = "${aws_api_gateway_resource.9_regional.id}"
  http_method = "OPTIONS"
  authorization = "NONE"

  provider = "aws.9"
  count    = "${local.api_gateway_9_count + local.api_gateway_9_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "9_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.9_regional.id}"
  resource_id = "${aws_api_gateway_resource.9_regional.id}"
  http_method = "${aws_api_gateway_method.9_options_regional.http_method}"
  type = "MOCK"

  request_templates = {
    "application/json" = <<EOF
{ "statusCode": 200 }
EOF
  }

  provider = "aws.9"
  count    = "${local.api_gateway_9_count + local.api_gateway_9_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration_response" "9_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.9_regional.id}"
  resource_id = "${aws_api_gateway_resource.9_regional.id}"
  http_method = "${aws_api_gateway_method.9_options_regional.http_method}"
  status_code = "200"
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token'",
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS,GET,PUT,PATCH,DELETE'",
    "method.response.header.Access-Control-Allow-Origin" = "'*'"
  }

  depends_on = ["aws_api_gateway_integration.9_options_regional"]

  provider = "aws.9"
  count    = "${local.api_gateway_9_count + local.api_gateway_9_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_response" "9_options_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.9_regional.id}"
  resource_id = "${aws_api_gateway_resource.9_regional.id}"
  http_method = "OPTIONS"
  status_code = "200"
  response_models = { "application/json" = "Empty" }
  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true,
    "method.response.header.Access-Control-Allow-Methods" = true,
    "method.response.header.Access-Control-Allow-Origin" = true
  }

  depends_on = ["aws_api_gateway_method.9_options_regional"]

  provider = "aws.9"
  count    = "${local.api_gateway_9_count + local.api_gateway_9_regional_count == 2 ? 1 : 0}"
}
