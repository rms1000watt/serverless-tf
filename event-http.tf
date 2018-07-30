// GENERATED FILE: DO NOT EDIT

resource "aws_api_gateway_rest_api" "global" {
  name  = "${local.service_name}"

  count = "${local.api_gateway_0 || local.api_gateway_1 || local.api_gateway_2 || local.api_gateway_3 || local.api_gateway_4 || local.api_gateway_5 || local.api_gateway_6 || local.api_gateway_7 || local.api_gateway_8 || local.api_gateway_9 || false ? 1 : 0}"
}

resource "aws_api_gateway_account" "global" {
  cloudwatch_role_arn = "${aws_iam_role.api_gateway_global.arn}"

  count = "${local.api_gateway_0 || local.api_gateway_1 || local.api_gateway_2 || local.api_gateway_3 || local.api_gateway_4 || local.api_gateway_5 || local.api_gateway_6 || local.api_gateway_7 || local.api_gateway_8 || local.api_gateway_9 || false ? 1 : 0}"
}

resource "aws_api_gateway_resource" "0" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_0_path}"

  count = "${local.api_gateway_0_count}"
}

resource "aws_api_gateway_method" "0_n_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.0.id}"
  http_method   = "${local.api_gateway_0_method}"
  authorization = "${local.api_gateway_0_authorization}"

  count = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_method" "0_w_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.0.id}"
  http_method   = "${local.api_gateway_0_method}"
  authorization = "${local.api_gateway_0_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.0.id}"

  count = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "0_n_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.0_n_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.0_n_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_0_arn}/invocations"

  count = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "0_w_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.0_w_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.0_w_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_0_arn}/invocations"

  count = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "0" {
  depends_on = [
    "aws_api_gateway_integration.0_n_auth",
    "aws_api_gateway_integration.0_w_auth",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_0_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_0_count}"
}

resource "aws_api_gateway_method_settings" "0" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_0_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_0_metrics}"
    logging_level   = "${local.api_gateway_0_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.0",
    "aws_api_gateway_account.global",
  ]

  count = "${local.api_gateway_0_count}"
}

resource "aws_api_gateway_authorizer" "0" {
  name                   = "${local.api_gateway_0_authorizer}"
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_0_authorizer_uri}"
  authorizer_credentials = "${local.api_gateway_0_authorizer_role_arn}"
  type                   = "REQUEST"

  count = "${local.api_gateway_0_authorizer_count}"
}

resource "aws_api_gateway_resource" "1" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_1_path}"

  count = "${local.api_gateway_1_count}"
}

resource "aws_api_gateway_method" "1_n_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.1.id}"
  http_method   = "${local.api_gateway_1_method}"
  authorization = "${local.api_gateway_1_authorization}"

  count = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_method" "1_w_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.1.id}"
  http_method   = "${local.api_gateway_1_method}"
  authorization = "${local.api_gateway_1_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.1.id}"

  count = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "1_n_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.1_n_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.1_n_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_1_arn}/invocations"

  count = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "1_w_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.1_w_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.1_w_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_1_arn}/invocations"

  count = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "1" {
  depends_on = [
    "aws_api_gateway_integration.1_n_auth",
    "aws_api_gateway_integration.1_w_auth",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_1_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_1_count}"
}

resource "aws_api_gateway_method_settings" "1" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_1_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_1_metrics}"
    logging_level   = "${local.api_gateway_1_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.1",
    "aws_api_gateway_account.global",
  ]

  count = "${local.api_gateway_1_count}"
}

resource "aws_api_gateway_authorizer" "1" {
  name                   = "${local.api_gateway_1_authorizer}"
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_1_authorizer_uri}"
  authorizer_credentials = "${local.api_gateway_1_authorizer_role_arn}"
  type                   = "REQUEST"

  count = "${local.api_gateway_1_authorizer_count}"
}

resource "aws_api_gateway_resource" "2" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_2_path}"

  count = "${local.api_gateway_2_count}"
}

resource "aws_api_gateway_method" "2_n_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.2.id}"
  http_method   = "${local.api_gateway_2_method}"
  authorization = "${local.api_gateway_2_authorization}"

  count = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_method" "2_w_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.2.id}"
  http_method   = "${local.api_gateway_2_method}"
  authorization = "${local.api_gateway_2_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.2.id}"

  count = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "2_n_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.2_n_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.2_n_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_2_arn}/invocations"

  count = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "2_w_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.2_w_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.2_w_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_2_arn}/invocations"

  count = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "2" {
  depends_on = [
    "aws_api_gateway_integration.2_n_auth",
    "aws_api_gateway_integration.2_w_auth",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_2_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_2_count}"
}

resource "aws_api_gateway_method_settings" "2" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_2_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_2_metrics}"
    logging_level   = "${local.api_gateway_2_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.2",
    "aws_api_gateway_account.global",
  ]

  count = "${local.api_gateway_2_count}"
}

resource "aws_api_gateway_authorizer" "2" {
  name                   = "${local.api_gateway_2_authorizer}"
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_2_authorizer_uri}"
  authorizer_credentials = "${local.api_gateway_2_authorizer_role_arn}"
  type                   = "REQUEST"

  count = "${local.api_gateway_2_authorizer_count}"
}

resource "aws_api_gateway_resource" "3" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_3_path}"

  count = "${local.api_gateway_3_count}"
}

resource "aws_api_gateway_method" "3_n_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.3.id}"
  http_method   = "${local.api_gateway_3_method}"
  authorization = "${local.api_gateway_3_authorization}"

  count = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_method" "3_w_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.3.id}"
  http_method   = "${local.api_gateway_3_method}"
  authorization = "${local.api_gateway_3_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.3.id}"

  count = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "3_n_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.3_n_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.3_n_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_3_arn}/invocations"

  count = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "3_w_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.3_w_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.3_w_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_3_arn}/invocations"

  count = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "3" {
  depends_on = [
    "aws_api_gateway_integration.3_n_auth",
    "aws_api_gateway_integration.3_w_auth",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_3_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_3_count}"
}

resource "aws_api_gateway_method_settings" "3" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_3_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_3_metrics}"
    logging_level   = "${local.api_gateway_3_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.3",
    "aws_api_gateway_account.global",
  ]

  count = "${local.api_gateway_3_count}"
}

resource "aws_api_gateway_authorizer" "3" {
  name                   = "${local.api_gateway_3_authorizer}"
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_3_authorizer_uri}"
  authorizer_credentials = "${local.api_gateway_3_authorizer_role_arn}"
  type                   = "REQUEST"

  count = "${local.api_gateway_3_authorizer_count}"
}

resource "aws_api_gateway_resource" "4" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_4_path}"

  count = "${local.api_gateway_4_count}"
}

resource "aws_api_gateway_method" "4_n_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.4.id}"
  http_method   = "${local.api_gateway_4_method}"
  authorization = "${local.api_gateway_4_authorization}"

  count = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_method" "4_w_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.4.id}"
  http_method   = "${local.api_gateway_4_method}"
  authorization = "${local.api_gateway_4_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.4.id}"

  count = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "4_n_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.4_n_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.4_n_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_4_arn}/invocations"

  count = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "4_w_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.4_w_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.4_w_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_4_arn}/invocations"

  count = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "4" {
  depends_on = [
    "aws_api_gateway_integration.4_n_auth",
    "aws_api_gateway_integration.4_w_auth",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_4_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_4_count}"
}

resource "aws_api_gateway_method_settings" "4" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_4_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_4_metrics}"
    logging_level   = "${local.api_gateway_4_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.4",
    "aws_api_gateway_account.global",
  ]

  count = "${local.api_gateway_4_count}"
}

resource "aws_api_gateway_authorizer" "4" {
  name                   = "${local.api_gateway_4_authorizer}"
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_4_authorizer_uri}"
  authorizer_credentials = "${local.api_gateway_4_authorizer_role_arn}"
  type                   = "REQUEST"

  count = "${local.api_gateway_4_authorizer_count}"
}

resource "aws_api_gateway_resource" "5" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_5_path}"

  count = "${local.api_gateway_5_count}"
}

resource "aws_api_gateway_method" "5_n_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.5.id}"
  http_method   = "${local.api_gateway_5_method}"
  authorization = "${local.api_gateway_5_authorization}"

  count = "${local.api_gateway_5_count + local.api_gateway_5_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_method" "5_w_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.5.id}"
  http_method   = "${local.api_gateway_5_method}"
  authorization = "${local.api_gateway_5_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.5.id}"

  count = "${local.api_gateway_5_count + local.api_gateway_5_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "5_n_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.5_n_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.5_n_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_5_arn}/invocations"

  count = "${local.api_gateway_5_count + local.api_gateway_5_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "5_w_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.5_w_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.5_w_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_5_arn}/invocations"

  count = "${local.api_gateway_5_count + local.api_gateway_5_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "5" {
  depends_on = [
    "aws_api_gateway_integration.5_n_auth",
    "aws_api_gateway_integration.5_w_auth",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_5_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_5_count}"
}

resource "aws_api_gateway_method_settings" "5" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_5_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_5_metrics}"
    logging_level   = "${local.api_gateway_5_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.5",
    "aws_api_gateway_account.global",
  ]

  count = "${local.api_gateway_5_count}"
}

resource "aws_api_gateway_authorizer" "5" {
  name                   = "${local.api_gateway_5_authorizer}"
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_5_authorizer_uri}"
  authorizer_credentials = "${local.api_gateway_5_authorizer_role_arn}"
  type                   = "REQUEST"

  count = "${local.api_gateway_5_authorizer_count}"
}

resource "aws_api_gateway_resource" "6" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_6_path}"

  count = "${local.api_gateway_6_count}"
}

resource "aws_api_gateway_method" "6_n_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.6.id}"
  http_method   = "${local.api_gateway_6_method}"
  authorization = "${local.api_gateway_6_authorization}"

  count = "${local.api_gateway_6_count + local.api_gateway_6_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_method" "6_w_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.6.id}"
  http_method   = "${local.api_gateway_6_method}"
  authorization = "${local.api_gateway_6_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.6.id}"

  count = "${local.api_gateway_6_count + local.api_gateway_6_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "6_n_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.6_n_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.6_n_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_6_arn}/invocations"

  count = "${local.api_gateway_6_count + local.api_gateway_6_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "6_w_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.6_w_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.6_w_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_6_arn}/invocations"

  count = "${local.api_gateway_6_count + local.api_gateway_6_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "6" {
  depends_on = [
    "aws_api_gateway_integration.6_n_auth",
    "aws_api_gateway_integration.6_w_auth",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_6_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_6_count}"
}

resource "aws_api_gateway_method_settings" "6" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_6_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_6_metrics}"
    logging_level   = "${local.api_gateway_6_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.6",
    "aws_api_gateway_account.global",
  ]

  count = "${local.api_gateway_6_count}"
}

resource "aws_api_gateway_authorizer" "6" {
  name                   = "${local.api_gateway_6_authorizer}"
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_6_authorizer_uri}"
  authorizer_credentials = "${local.api_gateway_6_authorizer_role_arn}"
  type                   = "REQUEST"

  count = "${local.api_gateway_6_authorizer_count}"
}

resource "aws_api_gateway_resource" "7" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_7_path}"

  count = "${local.api_gateway_7_count}"
}

resource "aws_api_gateway_method" "7_n_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.7.id}"
  http_method   = "${local.api_gateway_7_method}"
  authorization = "${local.api_gateway_7_authorization}"

  count = "${local.api_gateway_7_count + local.api_gateway_7_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_method" "7_w_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.7.id}"
  http_method   = "${local.api_gateway_7_method}"
  authorization = "${local.api_gateway_7_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.7.id}"

  count = "${local.api_gateway_7_count + local.api_gateway_7_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "7_n_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.7_n_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.7_n_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_7_arn}/invocations"

  count = "${local.api_gateway_7_count + local.api_gateway_7_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "7_w_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.7_w_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.7_w_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_7_arn}/invocations"

  count = "${local.api_gateway_7_count + local.api_gateway_7_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "7" {
  depends_on = [
    "aws_api_gateway_integration.7_n_auth",
    "aws_api_gateway_integration.7_w_auth",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_7_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_7_count}"
}

resource "aws_api_gateway_method_settings" "7" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_7_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_7_metrics}"
    logging_level   = "${local.api_gateway_7_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.7",
    "aws_api_gateway_account.global",
  ]

  count = "${local.api_gateway_7_count}"
}

resource "aws_api_gateway_authorizer" "7" {
  name                   = "${local.api_gateway_7_authorizer}"
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_7_authorizer_uri}"
  authorizer_credentials = "${local.api_gateway_7_authorizer_role_arn}"
  type                   = "REQUEST"

  count = "${local.api_gateway_7_authorizer_count}"
}

resource "aws_api_gateway_resource" "8" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_8_path}"

  count = "${local.api_gateway_8_count}"
}

resource "aws_api_gateway_method" "8_n_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.8.id}"
  http_method   = "${local.api_gateway_8_method}"
  authorization = "${local.api_gateway_8_authorization}"

  count = "${local.api_gateway_8_count + local.api_gateway_8_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_method" "8_w_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.8.id}"
  http_method   = "${local.api_gateway_8_method}"
  authorization = "${local.api_gateway_8_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.8.id}"

  count = "${local.api_gateway_8_count + local.api_gateway_8_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "8_n_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.8_n_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.8_n_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_8_arn}/invocations"

  count = "${local.api_gateway_8_count + local.api_gateway_8_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "8_w_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.8_w_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.8_w_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_8_arn}/invocations"

  count = "${local.api_gateway_8_count + local.api_gateway_8_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "8" {
  depends_on = [
    "aws_api_gateway_integration.8_n_auth",
    "aws_api_gateway_integration.8_w_auth",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_8_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_8_count}"
}

resource "aws_api_gateway_method_settings" "8" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_8_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_8_metrics}"
    logging_level   = "${local.api_gateway_8_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.8",
    "aws_api_gateway_account.global",
  ]

  count = "${local.api_gateway_8_count}"
}

resource "aws_api_gateway_authorizer" "8" {
  name                   = "${local.api_gateway_8_authorizer}"
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_8_authorizer_uri}"
  authorizer_credentials = "${local.api_gateway_8_authorizer_role_arn}"
  type                   = "REQUEST"

  count = "${local.api_gateway_8_authorizer_count}"
}

resource "aws_api_gateway_resource" "9" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_9_path}"

  count = "${local.api_gateway_9_count}"
}

resource "aws_api_gateway_method" "9_n_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.9.id}"
  http_method   = "${local.api_gateway_9_method}"
  authorization = "${local.api_gateway_9_authorization}"

  count = "${local.api_gateway_9_count + local.api_gateway_9_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_method" "9_w_auth" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.9.id}"
  http_method   = "${local.api_gateway_9_method}"
  authorization = "${local.api_gateway_9_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.9.id}"

  count = "${local.api_gateway_9_count + local.api_gateway_9_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "9_n_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.9_n_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.9_n_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_9_arn}/invocations"

  count = "${local.api_gateway_9_count + local.api_gateway_9_authorizer_count == 1 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "9_w_auth" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.9_w_auth.resource_id}"
  http_method             = "${aws_api_gateway_method.9_w_auth.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${data.aws_region.current.name}:lambda:path/2015-03-31/functions/${local.lambda_9_arn}/invocations"

  count = "${local.api_gateway_9_count + local.api_gateway_9_authorizer_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "9" {
  depends_on = [
    "aws_api_gateway_integration.9_n_auth",
    "aws_api_gateway_integration.9_w_auth",
  ]

  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_9_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  count = "${local.api_gateway_9_count}"
}

resource "aws_api_gateway_method_settings" "9" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_9_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_9_metrics}"
    logging_level   = "${local.api_gateway_9_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.9",
    "aws_api_gateway_account.global",
  ]

  count = "${local.api_gateway_9_count}"
}

resource "aws_api_gateway_authorizer" "9" {
  name                   = "${local.api_gateway_9_authorizer}"
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_9_authorizer_uri}"
  authorizer_credentials = "${local.api_gateway_9_authorizer_role_arn}"
  type                   = "REQUEST"

  count = "${local.api_gateway_9_authorizer_count}"
}
