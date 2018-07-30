// GENERATED FILE: DO NOT EDIT

resource "aws_iam_role" "api_gateway_global" {
  name               = "${local.service_name}-r-apig-g"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_0 || local.api_gateway_1 || local.api_gateway_2 || local.api_gateway_3 || local.api_gateway_4 || local.api_gateway_5 || local.api_gateway_6 || local.api_gateway_7 || local.api_gateway_8 || local.api_gateway_9 || false ? 1 : 0}"
}

resource "aws_iam_role_policy" "api_gateway_global" {
  name   = "${local.service_name}-p-apig-g"
  role   = "${aws_iam_role.api_gateway_global.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_0 || local.api_gateway_1 || local.api_gateway_2 || local.api_gateway_3 || local.api_gateway_4 || local.api_gateway_5 || local.api_gateway_6 || local.api_gateway_7 || local.api_gateway_8 || local.api_gateway_9 || false ? 1 : 0}"
}

resource "aws_iam_role" "lambda_0" {
  name               = "${local.lambda_0_name_computed}-r-lbd-0"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_0_count}"
}

resource "aws_iam_role_policy" "lambda_0" {
  name   = "${local.lambda_0_name_computed}-p-lbd-0"
  role   = "${aws_iam_role.lambda_0.name}"
  policy = "${file("${path.module}/policy-lambda.json")}"

  count = "${local.lambda_0_count}"
}

resource "aws_iam_role" "api_gateway_0" {
  name               = "${local.lambda_0_name_computed}-r-apig-0"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_0_count}"
}

resource "aws_iam_role_policy" "api_gateway_0" {
  name   = "${local.lambda_0_name_computed}-p-apig-0"
  role   = "${aws_iam_role.api_gateway_0.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_0_count}"
}

resource "aws_iam_role" "lambda_1" {
  name               = "${local.lambda_1_name_computed}-r-lbd-1"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_1_count}"
}

resource "aws_iam_role_policy" "lambda_1" {
  name   = "${local.lambda_1_name_computed}-p-lbd-1"
  role   = "${aws_iam_role.lambda_1.name}"
  policy = "${file("${path.module}/policy-lambda.json")}"

  count = "${local.lambda_1_count}"
}

resource "aws_iam_role" "api_gateway_1" {
  name               = "${local.lambda_1_name_computed}-r-apig-1"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_1_count}"
}

resource "aws_iam_role_policy" "api_gateway_1" {
  name   = "${local.lambda_1_name_computed}-p-apig-1"
  role   = "${aws_iam_role.api_gateway_1.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_1_count}"
}

resource "aws_iam_role" "lambda_2" {
  name               = "${local.lambda_2_name_computed}-r-lbd-2"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_2_count}"
}

resource "aws_iam_role_policy" "lambda_2" {
  name   = "${local.lambda_2_name_computed}-p-lbd-2"
  role   = "${aws_iam_role.lambda_2.name}"
  policy = "${file("${path.module}/policy-lambda.json")}"

  count = "${local.lambda_2_count}"
}

resource "aws_iam_role" "api_gateway_2" {
  name               = "${local.lambda_2_name_computed}-r-apig-2"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_2_count}"
}

resource "aws_iam_role_policy" "api_gateway_2" {
  name   = "${local.lambda_2_name_computed}-p-apig-2"
  role   = "${aws_iam_role.api_gateway_2.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_2_count}"
}

resource "aws_iam_role" "lambda_3" {
  name               = "${local.lambda_3_name_computed}-r-lbd-3"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_3_count}"
}

resource "aws_iam_role_policy" "lambda_3" {
  name   = "${local.lambda_3_name_computed}-p-lbd-3"
  role   = "${aws_iam_role.lambda_3.name}"
  policy = "${file("${path.module}/policy-lambda.json")}"

  count = "${local.lambda_3_count}"
}

resource "aws_iam_role" "api_gateway_3" {
  name               = "${local.lambda_3_name_computed}-r-apig-3"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_3_count}"
}

resource "aws_iam_role_policy" "api_gateway_3" {
  name   = "${local.lambda_3_name_computed}-p-apig-3"
  role   = "${aws_iam_role.api_gateway_3.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_3_count}"
}

resource "aws_iam_role" "lambda_4" {
  name               = "${local.lambda_4_name_computed}-r-lbd-4"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_4_count}"
}

resource "aws_iam_role_policy" "lambda_4" {
  name   = "${local.lambda_4_name_computed}-p-lbd-4"
  role   = "${aws_iam_role.lambda_4.name}"
  policy = "${file("${path.module}/policy-lambda.json")}"

  count = "${local.lambda_4_count}"
}

resource "aws_iam_role" "api_gateway_4" {
  name               = "${local.lambda_4_name_computed}-r-apig-4"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_4_count}"
}

resource "aws_iam_role_policy" "api_gateway_4" {
  name   = "${local.lambda_4_name_computed}-p-apig-4"
  role   = "${aws_iam_role.api_gateway_4.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_4_count}"
}

resource "aws_iam_role" "lambda_5" {
  name               = "${local.lambda_5_name_computed}-r-lbd-5"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_5_count}"
}

resource "aws_iam_role_policy" "lambda_5" {
  name   = "${local.lambda_5_name_computed}-p-lbd-5"
  role   = "${aws_iam_role.lambda_5.name}"
  policy = "${file("${path.module}/policy-lambda.json")}"

  count = "${local.lambda_5_count}"
}

resource "aws_iam_role" "api_gateway_5" {
  name               = "${local.lambda_5_name_computed}-r-apig-5"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_5_count}"
}

resource "aws_iam_role_policy" "api_gateway_5" {
  name   = "${local.lambda_5_name_computed}-p-apig-5"
  role   = "${aws_iam_role.api_gateway_5.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_5_count}"
}

resource "aws_iam_role" "lambda_6" {
  name               = "${local.lambda_6_name_computed}-r-lbd-6"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_6_count}"
}

resource "aws_iam_role_policy" "lambda_6" {
  name   = "${local.lambda_6_name_computed}-p-lbd-6"
  role   = "${aws_iam_role.lambda_6.name}"
  policy = "${file("${path.module}/policy-lambda.json")}"

  count = "${local.lambda_6_count}"
}

resource "aws_iam_role" "api_gateway_6" {
  name               = "${local.lambda_6_name_computed}-r-apig-6"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_6_count}"
}

resource "aws_iam_role_policy" "api_gateway_6" {
  name   = "${local.lambda_6_name_computed}-p-apig-6"
  role   = "${aws_iam_role.api_gateway_6.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_6_count}"
}

resource "aws_iam_role" "lambda_7" {
  name               = "${local.lambda_7_name_computed}-r-lbd-7"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_7_count}"
}

resource "aws_iam_role_policy" "lambda_7" {
  name   = "${local.lambda_7_name_computed}-p-lbd-7"
  role   = "${aws_iam_role.lambda_7.name}"
  policy = "${file("${path.module}/policy-lambda.json")}"

  count = "${local.lambda_7_count}"
}

resource "aws_iam_role" "api_gateway_7" {
  name               = "${local.lambda_7_name_computed}-r-apig-7"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_7_count}"
}

resource "aws_iam_role_policy" "api_gateway_7" {
  name   = "${local.lambda_7_name_computed}-p-apig-7"
  role   = "${aws_iam_role.api_gateway_7.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_7_count}"
}

resource "aws_iam_role" "lambda_8" {
  name               = "${local.lambda_8_name_computed}-r-lbd-8"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_8_count}"
}

resource "aws_iam_role_policy" "lambda_8" {
  name   = "${local.lambda_8_name_computed}-p-lbd-8"
  role   = "${aws_iam_role.lambda_8.name}"
  policy = "${file("${path.module}/policy-lambda.json")}"

  count = "${local.lambda_8_count}"
}

resource "aws_iam_role" "api_gateway_8" {
  name               = "${local.lambda_8_name_computed}-r-apig-8"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_8_count}"
}

resource "aws_iam_role_policy" "api_gateway_8" {
  name   = "${local.lambda_8_name_computed}-p-apig-8"
  role   = "${aws_iam_role.api_gateway_8.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_8_count}"
}

resource "aws_iam_role" "lambda_9" {
  name               = "${local.lambda_9_name_computed}-r-lbd-9"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_9_count}"
}

resource "aws_iam_role_policy" "lambda_9" {
  name   = "${local.lambda_9_name_computed}-p-lbd-9"
  role   = "${aws_iam_role.lambda_9.name}"
  policy = "${file("${path.module}/policy-lambda.json")}"

  count = "${local.lambda_9_count}"
}

resource "aws_iam_role" "api_gateway_9" {
  name               = "${local.lambda_9_name_computed}-r-apig-9"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_9_count}"
}

resource "aws_iam_role_policy" "api_gateway_9" {
  name   = "${local.lambda_9_name_computed}-p-apig-9"
  role   = "${aws_iam_role.api_gateway_9.name}"
  policy = "${file("${path.module}/policy-api-gateway.json")}"

  count = "${local.api_gateway_9_count}"
}
