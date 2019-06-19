// GENERATED FILE: DO NOT EDIT

resource "aws_api_gateway_rest_api" "global" {
  name   = "${local.service_name}"
  policy = "${local.http_policy}"

  count = "${(local.api_gateway_0 && local.lambda_0_same_region) || (local.api_gateway_1 && local.lambda_1_same_region) || (local.api_gateway_2 && local.lambda_2_same_region) || (local.api_gateway_3 && local.lambda_3_same_region) || (local.api_gateway_4 && local.lambda_4_same_region) || false ? 1 : 0}"
}

resource "aws_api_gateway_account" "global" {
  cloudwatch_role_arn = "${aws_iam_role.api_gateway_global.arn}"

  count = "${(local.api_gateway_0 && local.lambda_0_same_region) || (local.api_gateway_1 && local.lambda_1_same_region) || (local.api_gateway_2 && local.lambda_2_same_region) || (local.api_gateway_3 && local.lambda_3_same_region) || (local.api_gateway_4 && local.lambda_4_same_region) || false ? 1 : 0}"
}

resource "aws_api_gateway_rest_api" "0_regional" {
  name   = "${local.service_name}-${local.lambda_0_region}"
  policy = "${local.http_policy}"

  provider = "aws.0"
  count    = "${local.api_gateway_0 && (local.api_gateway_0_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_account" "0_regional" {
  cloudwatch_role_arn = "${aws_iam_role.api_gateway_global.arn}"

  provider = "aws.0"
  count    = "${local.api_gateway_0 && (local.api_gateway_0_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_resource" "0_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.0_regional.id}"
  parent_id   = "${aws_api_gateway_rest_api.0_regional.root_resource_id}"
  path_part   = "${local.api_gateway_0_path}"

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "0_n_auth_regional" {
  rest_api_id   = "${aws_api_gateway_rest_api.0_regional.id}"
  resource_id   = "${aws_api_gateway_resource.0_regional.id}"
  http_method   = "${local.api_gateway_0_method}"
  authorization = "${local.api_gateway_0_authorization}"

  provider = "aws.0"
  count    = "${(local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 1) && (local.api_gateway_0_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_method" "0_w_auth_regional" {
  rest_api_id   = "${aws_api_gateway_rest_api.0_regional.id}"
  resource_id   = "${aws_api_gateway_resource.0_regional.id}"
  http_method   = "${local.api_gateway_0_method}"
  authorization = "${local.api_gateway_0_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.0_regional.id}"

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count + local.api_gateway_0_regional_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "0_n_auth_regional" {
  rest_api_id             = "${aws_api_gateway_rest_api.0_regional.id}"
  resource_id             = "${aws_api_gateway_method.0_n_auth_regional.resource_id}"
  http_method             = "${aws_api_gateway_method.0_n_auth_regional.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_0_region}:lambda:path/2015-03-31/functions/${local.lambda_0_arn}/invocations"

  provider = "aws.0"
  count    = "${(local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 1) && (local.api_gateway_0_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_integration" "0_w_auth_regional" {
  rest_api_id             = "${aws_api_gateway_rest_api.0_regional.id}"
  resource_id             = "${aws_api_gateway_method.0_w_auth_regional.resource_id}"
  http_method             = "${aws_api_gateway_method.0_w_auth_regional.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_0_region}:lambda:path/2015-03-31/functions/${local.lambda_0_arn}/invocations"

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count + local.api_gateway_0_regional_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "0_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.0_regional.id}"
  stage_name  = "${local.api_gateway_0_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  depends_on = [
    "aws_api_gateway_integration.0_n_auth_regional",
    "aws_api_gateway_integration.0_w_auth_regional",
    "aws_api_gateway_deployment.1_regional",
    "aws_api_gateway_deployment.2_regional",
    "aws_api_gateway_deployment.3_regional",
    "aws_api_gateway_deployment.4_regional",
  ]

  // lifecycle {
  //   create_before_destroy = true
  // }

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_settings" "0_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.0_regional.id}"
  stage_name  = "${local.api_gateway_0_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_0_metrics}"
    logging_level   = "${local.api_gateway_0_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.0_regional",
    "aws_api_gateway_account.0_regional",
  ]

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_authorizer" "0_regional" {
  name                   = "${local.api_gateway_0_authorizer}-0"      // TODO: remove this -0 hack
  rest_api_id            = "${aws_api_gateway_rest_api.0_regional.id}"
  authorizer_uri         = "${local.api_gateway_0_authorizer_uri}"
  authorizer_credentials = "${aws_iam_role.api_gateway_0_authorizer.arn}"
  type                   = "REQUEST"

  provider = "aws.0"
  count    = "${local.api_gateway_0_authorizer_count + local.api_gateway_0_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "0_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_0_path}"

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "0_n_auth_global" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.0_global.id}"
  http_method   = "${local.api_gateway_0_method}"
  authorization = "${local.api_gateway_0_authorization}"

  provider = "aws.0"
  count    = "${(local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 1) && (local.api_gateway_0_global_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_method" "0_w_auth_global" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.0_global.id}"
  http_method   = "${local.api_gateway_0_method}"
  authorization = "${local.api_gateway_0_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.0_global.id}"

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count + local.api_gateway_0_global_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "0_n_auth_global" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.0_n_auth_global.resource_id}"
  http_method             = "${aws_api_gateway_method.0_n_auth_global.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_0_region}:lambda:path/2015-03-31/functions/${local.lambda_0_arn}/invocations"

  provider = "aws.0"
  count    = "${(local.api_gateway_0_count + local.api_gateway_0_authorizer_count == 1) && (local.api_gateway_0_global_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_integration" "0_w_auth_global" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.0_w_auth_global.resource_id}"
  http_method             = "${aws_api_gateway_method.0_w_auth_global.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_0_region}:lambda:path/2015-03-31/functions/${local.lambda_0_arn}/invocations"

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_authorizer_count + local.api_gateway_0_global_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "0_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_0_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  depends_on = [
    "aws_api_gateway_integration.0_n_auth_global",
    "aws_api_gateway_integration.0_w_auth_global",
    "aws_api_gateway_deployment.1_global",
    "aws_api_gateway_deployment.2_global",
    "aws_api_gateway_deployment.3_global",
    "aws_api_gateway_deployment.4_global",
  ]

  // lifecycle {
  //   create_before_destroy = true
  // }

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_settings" "0_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_0_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_0_metrics}"
    logging_level   = "${local.api_gateway_0_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.0_global",
    "aws_api_gateway_account.global",
  ]

  provider = "aws.0"
  count    = "${local.api_gateway_0_count + local.api_gateway_0_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_authorizer" "0_global" {
  name                   = "${local.api_gateway_0_authorizer}-0"      // TODO: remove this -0 hack
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_0_authorizer_uri}"
  authorizer_credentials = "${aws_iam_role.api_gateway_0_authorizer.arn}"
  type                   = "REQUEST"

  provider = "aws.0"
  count    = "${local.api_gateway_0_authorizer_count + local.api_gateway_0_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_rest_api" "1_regional" {
  name   = "${local.service_name}-${local.lambda_1_region}"
  policy = "${local.http_policy}"

  provider = "aws.1"
  count    = "${local.api_gateway_1 && (local.api_gateway_1_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_account" "1_regional" {
  cloudwatch_role_arn = "${aws_iam_role.api_gateway_global.arn}"

  provider = "aws.1"
  count    = "${local.api_gateway_1 && (local.api_gateway_1_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_resource" "1_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.1_regional.id}"
  parent_id   = "${aws_api_gateway_rest_api.1_regional.root_resource_id}"
  path_part   = "${local.api_gateway_1_path}"

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "1_n_auth_regional" {
  rest_api_id   = "${aws_api_gateway_rest_api.1_regional.id}"
  resource_id   = "${aws_api_gateway_resource.1_regional.id}"
  http_method   = "${local.api_gateway_1_method}"
  authorization = "${local.api_gateway_1_authorization}"

  provider = "aws.1"
  count    = "${(local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 1) && (local.api_gateway_1_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_method" "1_w_auth_regional" {
  rest_api_id   = "${aws_api_gateway_rest_api.1_regional.id}"
  resource_id   = "${aws_api_gateway_resource.1_regional.id}"
  http_method   = "${local.api_gateway_1_method}"
  authorization = "${local.api_gateway_1_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.1_regional.id}"

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count + local.api_gateway_1_regional_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "1_n_auth_regional" {
  rest_api_id             = "${aws_api_gateway_rest_api.1_regional.id}"
  resource_id             = "${aws_api_gateway_method.1_n_auth_regional.resource_id}"
  http_method             = "${aws_api_gateway_method.1_n_auth_regional.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_1_region}:lambda:path/2015-03-31/functions/${local.lambda_1_arn}/invocations"

  provider = "aws.1"
  count    = "${(local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 1) && (local.api_gateway_1_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_integration" "1_w_auth_regional" {
  rest_api_id             = "${aws_api_gateway_rest_api.1_regional.id}"
  resource_id             = "${aws_api_gateway_method.1_w_auth_regional.resource_id}"
  http_method             = "${aws_api_gateway_method.1_w_auth_regional.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_1_region}:lambda:path/2015-03-31/functions/${local.lambda_1_arn}/invocations"

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count + local.api_gateway_1_regional_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "1_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.1_regional.id}"
  stage_name  = "${local.api_gateway_1_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  depends_on = [
    "aws_api_gateway_integration.1_n_auth_regional",
    "aws_api_gateway_integration.1_w_auth_regional",
    "aws_api_gateway_deployment.2_regional",
    "aws_api_gateway_deployment.3_regional",
    "aws_api_gateway_deployment.4_regional",
  ]

  // lifecycle {
  //   create_before_destroy = true
  // }

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_settings" "1_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.1_regional.id}"
  stage_name  = "${local.api_gateway_1_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_1_metrics}"
    logging_level   = "${local.api_gateway_1_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.1_regional",
    "aws_api_gateway_account.1_regional",
  ]

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_authorizer" "1_regional" {
  name                   = "${local.api_gateway_1_authorizer}-1"      // TODO: remove this -1 hack
  rest_api_id            = "${aws_api_gateway_rest_api.1_regional.id}"
  authorizer_uri         = "${local.api_gateway_1_authorizer_uri}"
  authorizer_credentials = "${aws_iam_role.api_gateway_1_authorizer.arn}"
  type                   = "REQUEST"

  provider = "aws.1"
  count    = "${local.api_gateway_1_authorizer_count + local.api_gateway_1_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "1_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_1_path}"

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "1_n_auth_global" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.1_global.id}"
  http_method   = "${local.api_gateway_1_method}"
  authorization = "${local.api_gateway_1_authorization}"

  provider = "aws.1"
  count    = "${(local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 1) && (local.api_gateway_1_global_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_method" "1_w_auth_global" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.1_global.id}"
  http_method   = "${local.api_gateway_1_method}"
  authorization = "${local.api_gateway_1_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.1_global.id}"

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count + local.api_gateway_1_global_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "1_n_auth_global" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.1_n_auth_global.resource_id}"
  http_method             = "${aws_api_gateway_method.1_n_auth_global.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_1_region}:lambda:path/2015-03-31/functions/${local.lambda_1_arn}/invocations"

  provider = "aws.1"
  count    = "${(local.api_gateway_1_count + local.api_gateway_1_authorizer_count == 1) && (local.api_gateway_1_global_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_integration" "1_w_auth_global" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.1_w_auth_global.resource_id}"
  http_method             = "${aws_api_gateway_method.1_w_auth_global.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_1_region}:lambda:path/2015-03-31/functions/${local.lambda_1_arn}/invocations"

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_authorizer_count + local.api_gateway_1_global_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "1_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_1_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  depends_on = [
    "aws_api_gateway_integration.1_n_auth_global",
    "aws_api_gateway_integration.1_w_auth_global",
    "aws_api_gateway_deployment.2_global",
    "aws_api_gateway_deployment.3_global",
    "aws_api_gateway_deployment.4_global",
  ]

  // lifecycle {
  //   create_before_destroy = true
  // }

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_settings" "1_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_1_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_1_metrics}"
    logging_level   = "${local.api_gateway_1_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.1_global",
    "aws_api_gateway_account.global",
  ]

  provider = "aws.1"
  count    = "${local.api_gateway_1_count + local.api_gateway_1_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_authorizer" "1_global" {
  name                   = "${local.api_gateway_1_authorizer}-1"      // TODO: remove this -1 hack
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_1_authorizer_uri}"
  authorizer_credentials = "${aws_iam_role.api_gateway_1_authorizer.arn}"
  type                   = "REQUEST"

  provider = "aws.1"
  count    = "${local.api_gateway_1_authorizer_count + local.api_gateway_1_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_rest_api" "2_regional" {
  name   = "${local.service_name}-${local.lambda_2_region}"
  policy = "${local.http_policy}"

  provider = "aws.2"
  count    = "${local.api_gateway_2 && (local.api_gateway_2_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_account" "2_regional" {
  cloudwatch_role_arn = "${aws_iam_role.api_gateway_global.arn}"

  provider = "aws.2"
  count    = "${local.api_gateway_2 && (local.api_gateway_2_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_resource" "2_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.2_regional.id}"
  parent_id   = "${aws_api_gateway_rest_api.2_regional.root_resource_id}"
  path_part   = "${local.api_gateway_2_path}"

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "2_n_auth_regional" {
  rest_api_id   = "${aws_api_gateway_rest_api.2_regional.id}"
  resource_id   = "${aws_api_gateway_resource.2_regional.id}"
  http_method   = "${local.api_gateway_2_method}"
  authorization = "${local.api_gateway_2_authorization}"

  provider = "aws.2"
  count    = "${(local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 1) && (local.api_gateway_2_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_method" "2_w_auth_regional" {
  rest_api_id   = "${aws_api_gateway_rest_api.2_regional.id}"
  resource_id   = "${aws_api_gateway_resource.2_regional.id}"
  http_method   = "${local.api_gateway_2_method}"
  authorization = "${local.api_gateway_2_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.2_regional.id}"

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count + local.api_gateway_2_regional_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "2_n_auth_regional" {
  rest_api_id             = "${aws_api_gateway_rest_api.2_regional.id}"
  resource_id             = "${aws_api_gateway_method.2_n_auth_regional.resource_id}"
  http_method             = "${aws_api_gateway_method.2_n_auth_regional.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_2_region}:lambda:path/2015-03-31/functions/${local.lambda_2_arn}/invocations"

  provider = "aws.2"
  count    = "${(local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 1) && (local.api_gateway_2_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_integration" "2_w_auth_regional" {
  rest_api_id             = "${aws_api_gateway_rest_api.2_regional.id}"
  resource_id             = "${aws_api_gateway_method.2_w_auth_regional.resource_id}"
  http_method             = "${aws_api_gateway_method.2_w_auth_regional.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_2_region}:lambda:path/2015-03-31/functions/${local.lambda_2_arn}/invocations"

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count + local.api_gateway_2_regional_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "2_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.2_regional.id}"
  stage_name  = "${local.api_gateway_2_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  depends_on = [
    "aws_api_gateway_integration.2_n_auth_regional",
    "aws_api_gateway_integration.2_w_auth_regional",
    "aws_api_gateway_deployment.3_regional",
    "aws_api_gateway_deployment.4_regional",
  ]

  // lifecycle {
  //   create_before_destroy = true
  // }

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_settings" "2_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.2_regional.id}"
  stage_name  = "${local.api_gateway_2_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_2_metrics}"
    logging_level   = "${local.api_gateway_2_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.2_regional",
    "aws_api_gateway_account.2_regional",
  ]

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_authorizer" "2_regional" {
  name                   = "${local.api_gateway_2_authorizer}-2"      // TODO: remove this -2 hack
  rest_api_id            = "${aws_api_gateway_rest_api.2_regional.id}"
  authorizer_uri         = "${local.api_gateway_2_authorizer_uri}"
  authorizer_credentials = "${aws_iam_role.api_gateway_2_authorizer.arn}"
  type                   = "REQUEST"

  provider = "aws.2"
  count    = "${local.api_gateway_2_authorizer_count + local.api_gateway_2_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "2_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_2_path}"

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "2_n_auth_global" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.2_global.id}"
  http_method   = "${local.api_gateway_2_method}"
  authorization = "${local.api_gateway_2_authorization}"

  provider = "aws.2"
  count    = "${(local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 1) && (local.api_gateway_2_global_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_method" "2_w_auth_global" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.2_global.id}"
  http_method   = "${local.api_gateway_2_method}"
  authorization = "${local.api_gateway_2_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.2_global.id}"

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count + local.api_gateway_2_global_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "2_n_auth_global" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.2_n_auth_global.resource_id}"
  http_method             = "${aws_api_gateway_method.2_n_auth_global.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_2_region}:lambda:path/2015-03-31/functions/${local.lambda_2_arn}/invocations"

  provider = "aws.2"
  count    = "${(local.api_gateway_2_count + local.api_gateway_2_authorizer_count == 1) && (local.api_gateway_2_global_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_integration" "2_w_auth_global" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.2_w_auth_global.resource_id}"
  http_method             = "${aws_api_gateway_method.2_w_auth_global.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_2_region}:lambda:path/2015-03-31/functions/${local.lambda_2_arn}/invocations"

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_authorizer_count + local.api_gateway_2_global_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "2_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_2_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  depends_on = [
    "aws_api_gateway_integration.2_n_auth_global",
    "aws_api_gateway_integration.2_w_auth_global",
    "aws_api_gateway_deployment.3_global",
    "aws_api_gateway_deployment.4_global",
  ]

  // lifecycle {
  //   create_before_destroy = true
  // }

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_settings" "2_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_2_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_2_metrics}"
    logging_level   = "${local.api_gateway_2_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.2_global",
    "aws_api_gateway_account.global",
  ]

  provider = "aws.2"
  count    = "${local.api_gateway_2_count + local.api_gateway_2_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_authorizer" "2_global" {
  name                   = "${local.api_gateway_2_authorizer}-2"      // TODO: remove this -2 hack
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_2_authorizer_uri}"
  authorizer_credentials = "${aws_iam_role.api_gateway_2_authorizer.arn}"
  type                   = "REQUEST"

  provider = "aws.2"
  count    = "${local.api_gateway_2_authorizer_count + local.api_gateway_2_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_rest_api" "3_regional" {
  name   = "${local.service_name}-${local.lambda_3_region}"
  policy = "${local.http_policy}"

  provider = "aws.3"
  count    = "${local.api_gateway_3 && (local.api_gateway_3_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_account" "3_regional" {
  cloudwatch_role_arn = "${aws_iam_role.api_gateway_global.arn}"

  provider = "aws.3"
  count    = "${local.api_gateway_3 && (local.api_gateway_3_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_resource" "3_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.3_regional.id}"
  parent_id   = "${aws_api_gateway_rest_api.3_regional.root_resource_id}"
  path_part   = "${local.api_gateway_3_path}"

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "3_n_auth_regional" {
  rest_api_id   = "${aws_api_gateway_rest_api.3_regional.id}"
  resource_id   = "${aws_api_gateway_resource.3_regional.id}"
  http_method   = "${local.api_gateway_3_method}"
  authorization = "${local.api_gateway_3_authorization}"

  provider = "aws.3"
  count    = "${(local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 1) && (local.api_gateway_3_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_method" "3_w_auth_regional" {
  rest_api_id   = "${aws_api_gateway_rest_api.3_regional.id}"
  resource_id   = "${aws_api_gateway_resource.3_regional.id}"
  http_method   = "${local.api_gateway_3_method}"
  authorization = "${local.api_gateway_3_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.3_regional.id}"

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count + local.api_gateway_3_regional_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "3_n_auth_regional" {
  rest_api_id             = "${aws_api_gateway_rest_api.3_regional.id}"
  resource_id             = "${aws_api_gateway_method.3_n_auth_regional.resource_id}"
  http_method             = "${aws_api_gateway_method.3_n_auth_regional.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_3_region}:lambda:path/2015-03-31/functions/${local.lambda_3_arn}/invocations"

  provider = "aws.3"
  count    = "${(local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 1) && (local.api_gateway_3_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_integration" "3_w_auth_regional" {
  rest_api_id             = "${aws_api_gateway_rest_api.3_regional.id}"
  resource_id             = "${aws_api_gateway_method.3_w_auth_regional.resource_id}"
  http_method             = "${aws_api_gateway_method.3_w_auth_regional.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_3_region}:lambda:path/2015-03-31/functions/${local.lambda_3_arn}/invocations"

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count + local.api_gateway_3_regional_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "3_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.3_regional.id}"
  stage_name  = "${local.api_gateway_3_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  depends_on = [
    "aws_api_gateway_integration.3_n_auth_regional",
    "aws_api_gateway_integration.3_w_auth_regional",
    "aws_api_gateway_deployment.4_regional",
  ]

  // lifecycle {
  //   create_before_destroy = true
  // }

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_settings" "3_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.3_regional.id}"
  stage_name  = "${local.api_gateway_3_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_3_metrics}"
    logging_level   = "${local.api_gateway_3_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.3_regional",
    "aws_api_gateway_account.3_regional",
  ]

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_authorizer" "3_regional" {
  name                   = "${local.api_gateway_3_authorizer}-3"      // TODO: remove this -3 hack
  rest_api_id            = "${aws_api_gateway_rest_api.3_regional.id}"
  authorizer_uri         = "${local.api_gateway_3_authorizer_uri}"
  authorizer_credentials = "${aws_iam_role.api_gateway_3_authorizer.arn}"
  type                   = "REQUEST"

  provider = "aws.3"
  count    = "${local.api_gateway_3_authorizer_count + local.api_gateway_3_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "3_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_3_path}"

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "3_n_auth_global" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.3_global.id}"
  http_method   = "${local.api_gateway_3_method}"
  authorization = "${local.api_gateway_3_authorization}"

  provider = "aws.3"
  count    = "${(local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 1) && (local.api_gateway_3_global_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_method" "3_w_auth_global" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.3_global.id}"
  http_method   = "${local.api_gateway_3_method}"
  authorization = "${local.api_gateway_3_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.3_global.id}"

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count + local.api_gateway_3_global_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "3_n_auth_global" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.3_n_auth_global.resource_id}"
  http_method             = "${aws_api_gateway_method.3_n_auth_global.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_3_region}:lambda:path/2015-03-31/functions/${local.lambda_3_arn}/invocations"

  provider = "aws.3"
  count    = "${(local.api_gateway_3_count + local.api_gateway_3_authorizer_count == 1) && (local.api_gateway_3_global_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_integration" "3_w_auth_global" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.3_w_auth_global.resource_id}"
  http_method             = "${aws_api_gateway_method.3_w_auth_global.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_3_region}:lambda:path/2015-03-31/functions/${local.lambda_3_arn}/invocations"

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_authorizer_count + local.api_gateway_3_global_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "3_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_3_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  depends_on = [
    "aws_api_gateway_integration.3_n_auth_global",
    "aws_api_gateway_integration.3_w_auth_global",
    "aws_api_gateway_deployment.4_global",
  ]

  // lifecycle {
  //   create_before_destroy = true
  // }

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_settings" "3_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_3_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_3_metrics}"
    logging_level   = "${local.api_gateway_3_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.3_global",
    "aws_api_gateway_account.global",
  ]

  provider = "aws.3"
  count    = "${local.api_gateway_3_count + local.api_gateway_3_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_authorizer" "3_global" {
  name                   = "${local.api_gateway_3_authorizer}-3"      // TODO: remove this -3 hack
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_3_authorizer_uri}"
  authorizer_credentials = "${aws_iam_role.api_gateway_3_authorizer.arn}"
  type                   = "REQUEST"

  provider = "aws.3"
  count    = "${local.api_gateway_3_authorizer_count + local.api_gateway_3_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_rest_api" "4_regional" {
  name   = "${local.service_name}-${local.lambda_4_region}"
  policy = "${local.http_policy}"

  provider = "aws.4"
  count    = "${local.api_gateway_4 && (local.api_gateway_4_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_account" "4_regional" {
  cloudwatch_role_arn = "${aws_iam_role.api_gateway_global.arn}"

  provider = "aws.4"
  count    = "${local.api_gateway_4 && (local.api_gateway_4_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_resource" "4_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.4_regional.id}"
  parent_id   = "${aws_api_gateway_rest_api.4_regional.root_resource_id}"
  path_part   = "${local.api_gateway_4_path}"

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "4_n_auth_regional" {
  rest_api_id   = "${aws_api_gateway_rest_api.4_regional.id}"
  resource_id   = "${aws_api_gateway_resource.4_regional.id}"
  http_method   = "${local.api_gateway_4_method}"
  authorization = "${local.api_gateway_4_authorization}"

  provider = "aws.4"
  count    = "${(local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 1) && (local.api_gateway_4_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_method" "4_w_auth_regional" {
  rest_api_id   = "${aws_api_gateway_rest_api.4_regional.id}"
  resource_id   = "${aws_api_gateway_resource.4_regional.id}"
  http_method   = "${local.api_gateway_4_method}"
  authorization = "${local.api_gateway_4_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.4_regional.id}"

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count + local.api_gateway_4_regional_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "4_n_auth_regional" {
  rest_api_id             = "${aws_api_gateway_rest_api.4_regional.id}"
  resource_id             = "${aws_api_gateway_method.4_n_auth_regional.resource_id}"
  http_method             = "${aws_api_gateway_method.4_n_auth_regional.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_4_region}:lambda:path/2015-03-31/functions/${local.lambda_4_arn}/invocations"

  provider = "aws.4"
  count    = "${(local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 1) && (local.api_gateway_4_regional_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_integration" "4_w_auth_regional" {
  rest_api_id             = "${aws_api_gateway_rest_api.4_regional.id}"
  resource_id             = "${aws_api_gateway_method.4_w_auth_regional.resource_id}"
  http_method             = "${aws_api_gateway_method.4_w_auth_regional.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_4_region}:lambda:path/2015-03-31/functions/${local.lambda_4_arn}/invocations"

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count + local.api_gateway_4_regional_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "4_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.4_regional.id}"
  stage_name  = "${local.api_gateway_4_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  depends_on = [
    "aws_api_gateway_integration.4_n_auth_regional",
    "aws_api_gateway_integration.4_w_auth_regional",
  ]

  // lifecycle {
  //   create_before_destroy = true
  // }

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_settings" "4_regional" {
  rest_api_id = "${aws_api_gateway_rest_api.4_regional.id}"
  stage_name  = "${local.api_gateway_4_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_4_metrics}"
    logging_level   = "${local.api_gateway_4_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.4_regional",
    "aws_api_gateway_account.4_regional",
  ]

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_authorizer" "4_regional" {
  name                   = "${local.api_gateway_4_authorizer}-4"      // TODO: remove this -4 hack
  rest_api_id            = "${aws_api_gateway_rest_api.4_regional.id}"
  authorizer_uri         = "${local.api_gateway_4_authorizer_uri}"
  authorizer_credentials = "${aws_iam_role.api_gateway_4_authorizer.arn}"
  type                   = "REQUEST"

  provider = "aws.4"
  count    = "${local.api_gateway_4_authorizer_count + local.api_gateway_4_regional_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_resource" "4_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  parent_id   = "${aws_api_gateway_rest_api.global.root_resource_id}"
  path_part   = "${local.api_gateway_4_path}"

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method" "4_n_auth_global" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.4_global.id}"
  http_method   = "${local.api_gateway_4_method}"
  authorization = "${local.api_gateway_4_authorization}"

  provider = "aws.4"
  count    = "${(local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 1) && (local.api_gateway_4_global_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_method" "4_w_auth_global" {
  rest_api_id   = "${aws_api_gateway_rest_api.global.id}"
  resource_id   = "${aws_api_gateway_resource.4_global.id}"
  http_method   = "${local.api_gateway_4_method}"
  authorization = "${local.api_gateway_4_authorization}"
  authorizer_id = "${aws_api_gateway_authorizer.4_global.id}"

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count + local.api_gateway_4_global_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_integration" "4_n_auth_global" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.4_n_auth_global.resource_id}"
  http_method             = "${aws_api_gateway_method.4_n_auth_global.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_4_region}:lambda:path/2015-03-31/functions/${local.lambda_4_arn}/invocations"

  provider = "aws.4"
  count    = "${(local.api_gateway_4_count + local.api_gateway_4_authorizer_count == 1) && (local.api_gateway_4_global_count == 1) ? 1 : 0}"
}

resource "aws_api_gateway_integration" "4_w_auth_global" {
  rest_api_id             = "${aws_api_gateway_rest_api.global.id}"
  resource_id             = "${aws_api_gateway_method.4_w_auth_global.resource_id}"
  http_method             = "${aws_api_gateway_method.4_w_auth_global.http_method}"
  type                    = "AWS_PROXY"
  integration_http_method = "POST"
  uri                     = "arn:aws:apigateway:${local.lambda_4_region}:lambda:path/2015-03-31/functions/${local.lambda_4_arn}/invocations"

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_authorizer_count + local.api_gateway_4_global_count == 3 ? 1 : 0}"
}

resource "aws_api_gateway_deployment" "4_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_4_stage}"

  variables {
    deployed_at = "${timestamp()}"
  }

  depends_on = [
    "aws_api_gateway_integration.4_n_auth_global",
    "aws_api_gateway_integration.4_w_auth_global",
  ]

  // lifecycle {
  //   create_before_destroy = true
  // }

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_method_settings" "4_global" {
  rest_api_id = "${aws_api_gateway_rest_api.global.id}"
  stage_name  = "${local.api_gateway_4_stage}"
  method_path = "*/*"

  settings {
    metrics_enabled = "${local.api_gateway_4_metrics}"
    logging_level   = "${local.api_gateway_4_logging_level}"
  }

  depends_on = [
    "aws_api_gateway_deployment.4_global",
    "aws_api_gateway_account.global",
  ]

  provider = "aws.4"
  count    = "${local.api_gateway_4_count + local.api_gateway_4_global_count == 2 ? 1 : 0}"
}

resource "aws_api_gateway_authorizer" "4_global" {
  name                   = "${local.api_gateway_4_authorizer}-4"      // TODO: remove this -4 hack
  rest_api_id            = "${aws_api_gateway_rest_api.global.id}"
  authorizer_uri         = "${local.api_gateway_4_authorizer_uri}"
  authorizer_credentials = "${aws_iam_role.api_gateway_4_authorizer.arn}"
  type                   = "REQUEST"

  provider = "aws.4"
  count    = "${local.api_gateway_4_authorizer_count + local.api_gateway_4_global_count == 2 ? 1 : 0}"
}
