// GENERATED FILE: DO NOT EDIT

resource "aws_iam_role" "api_gateway_global" {
  name               = "${local.service_name}-r-apig-g"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_0 || local.api_gateway_1 || local.api_gateway_2 || local.api_gateway_3 || local.api_gateway_4 || false ? 1 : 0}"
}

resource "aws_iam_role_policy" "api_gateway_global" {
  name   = "${local.service_name}-p-apig-g"
  role   = "${aws_iam_role.api_gateway_global.name}"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.api_gateway_0 || local.api_gateway_1 || local.api_gateway_2 || local.api_gateway_3 || local.api_gateway_4 || false ? 1 : 0}"
}

resource "aws_iam_role" "lambda_0" {
  name               = "${local.lambda_0_name_computed}-r-lbd-0"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_0_count}"
}

resource "aws_iam_role_policy" "lambda_0" {
  name   = "${local.lambda_0_name_computed}-p-lbd-0"
  role   = "${aws_iam_role.lambda_0.name}"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.lambda_0_count}"
}

resource "aws_iam_role" "api_gateway_0_authorizer" {
  name               = "${local.lambda_0_name_computed}-r-apiga-0"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_0_authorizer_count}"
}

data "template_file" "api_gateway_0_authorizer" {
  template = "${file("${path.module}/policy-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_0_authorizer_lambda_arn}"
  }

  count = "${local.api_gateway_0_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_0_authorizer" {
  name   = "${local.lambda_0_name_computed}-p-apiga-0"
  role   = "${aws_iam_role.api_gateway_0_authorizer.name}"
  policy = "${data.template_file.api_gateway_0_authorizer.rendered}"

  count = "${local.api_gateway_0_authorizer_count}"
}

resource "aws_iam_policy" "api_gateway_0_authorizer_default" {
  name   = "${local.lambda_0_name_computed}-p-apiga-0"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.api_gateway_0_authorizer_count == 1 && local.api_gateway_0_authorizer_policy_arn_count == 0 ? 1 : 0}"
}

resource "aws_iam_role_policy_attachment" "api_gateway_0_authorizer_default" {
  role       = "${aws_iam_role.api_gateway_0_authorizer.name}"
  policy_arn = "${aws_iam_policy.api_gateway_0_authorizer_default.arn}"

  count = "${local.api_gateway_0_authorizer_count == 1 && local.api_gateway_0_authorizer_policy_arn_count == 0 ? 1 : 0}"
}

resource "aws_iam_role_policy_attachment" "api_gateway_0_authorizer_custom" {
  role       = "${aws_iam_role.api_gateway_0_authorizer.name}"
  policy_arn = "${local.api_gateway_0_authorizer_policy_arn}"

  count = "${local.api_gateway_0_authorizer_count + local.api_gateway_0_authorizer_policy_arn_count == 2 ? 1 : 0}"
}

resource "aws_iam_role" "lambda_1" {
  name               = "${local.lambda_1_name_computed}-r-lbd-1"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_1_count}"
}

resource "aws_iam_role_policy" "lambda_1" {
  name   = "${local.lambda_1_name_computed}-p-lbd-1"
  role   = "${aws_iam_role.lambda_1.name}"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.lambda_1_count}"
}

resource "aws_iam_role" "api_gateway_1_authorizer" {
  name               = "${local.lambda_1_name_computed}-r-apiga-1"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_1_authorizer_count}"
}

data "template_file" "api_gateway_1_authorizer" {
  template = "${file("${path.module}/policy-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_1_authorizer_lambda_arn}"
  }

  count = "${local.api_gateway_1_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_1_authorizer" {
  name   = "${local.lambda_1_name_computed}-p-apiga-1"
  role   = "${aws_iam_role.api_gateway_1_authorizer.name}"
  policy = "${data.template_file.api_gateway_1_authorizer.rendered}"

  count = "${local.api_gateway_1_authorizer_count}"
}

resource "aws_iam_policy" "api_gateway_1_authorizer_default" {
  name   = "${local.lambda_1_name_computed}-p-apiga-1"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.api_gateway_1_authorizer_count == 1 && local.api_gateway_1_authorizer_policy_arn_count == 0 ? 1 : 0}"
}

resource "aws_iam_role_policy_attachment" "api_gateway_1_authorizer_default" {
  role       = "${aws_iam_role.api_gateway_1_authorizer.name}"
  policy_arn = "${aws_iam_policy.api_gateway_1_authorizer_default.arn}"

  count = "${local.api_gateway_1_authorizer_count == 1 && local.api_gateway_1_authorizer_policy_arn_count == 0 ? 1 : 0}"
}

resource "aws_iam_role_policy_attachment" "api_gateway_1_authorizer_custom" {
  role       = "${aws_iam_role.api_gateway_1_authorizer.name}"
  policy_arn = "${local.api_gateway_1_authorizer_policy_arn}"

  count = "${local.api_gateway_1_authorizer_count + local.api_gateway_1_authorizer_policy_arn_count == 2 ? 1 : 0}"
}

resource "aws_iam_role" "lambda_2" {
  name               = "${local.lambda_2_name_computed}-r-lbd-2"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_2_count}"
}

resource "aws_iam_role_policy" "lambda_2" {
  name   = "${local.lambda_2_name_computed}-p-lbd-2"
  role   = "${aws_iam_role.lambda_2.name}"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.lambda_2_count}"
}

resource "aws_iam_role" "api_gateway_2_authorizer" {
  name               = "${local.lambda_2_name_computed}-r-apiga-2"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_2_authorizer_count}"
}

data "template_file" "api_gateway_2_authorizer" {
  template = "${file("${path.module}/policy-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_2_authorizer_lambda_arn}"
  }

  count = "${local.api_gateway_2_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_2_authorizer" {
  name   = "${local.lambda_2_name_computed}-p-apiga-2"
  role   = "${aws_iam_role.api_gateway_2_authorizer.name}"
  policy = "${data.template_file.api_gateway_2_authorizer.rendered}"

  count = "${local.api_gateway_2_authorizer_count}"
}

resource "aws_iam_policy" "api_gateway_2_authorizer_default" {
  name   = "${local.lambda_2_name_computed}-p-apiga-2"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.api_gateway_2_authorizer_count == 1 && local.api_gateway_2_authorizer_policy_arn_count == 0 ? 1 : 0}"
}

resource "aws_iam_role_policy_attachment" "api_gateway_2_authorizer_default" {
  role       = "${aws_iam_role.api_gateway_2_authorizer.name}"
  policy_arn = "${aws_iam_policy.api_gateway_2_authorizer_default.arn}"

  count = "${local.api_gateway_2_authorizer_count == 1 && local.api_gateway_2_authorizer_policy_arn_count == 0 ? 1 : 0}"
}

resource "aws_iam_role_policy_attachment" "api_gateway_2_authorizer_custom" {
  role       = "${aws_iam_role.api_gateway_2_authorizer.name}"
  policy_arn = "${local.api_gateway_2_authorizer_policy_arn}"

  count = "${local.api_gateway_2_authorizer_count + local.api_gateway_2_authorizer_policy_arn_count == 2 ? 1 : 0}"
}

resource "aws_iam_role" "lambda_3" {
  name               = "${local.lambda_3_name_computed}-r-lbd-3"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_3_count}"
}

resource "aws_iam_role_policy" "lambda_3" {
  name   = "${local.lambda_3_name_computed}-p-lbd-3"
  role   = "${aws_iam_role.lambda_3.name}"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.lambda_3_count}"
}

resource "aws_iam_role" "api_gateway_3_authorizer" {
  name               = "${local.lambda_3_name_computed}-r-apiga-3"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_3_authorizer_count}"
}

data "template_file" "api_gateway_3_authorizer" {
  template = "${file("${path.module}/policy-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_3_authorizer_lambda_arn}"
  }

  count = "${local.api_gateway_3_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_3_authorizer" {
  name   = "${local.lambda_3_name_computed}-p-apiga-3"
  role   = "${aws_iam_role.api_gateway_3_authorizer.name}"
  policy = "${data.template_file.api_gateway_3_authorizer.rendered}"

  count = "${local.api_gateway_3_authorizer_count}"
}

resource "aws_iam_policy" "api_gateway_3_authorizer_default" {
  name   = "${local.lambda_3_name_computed}-p-apiga-3"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.api_gateway_3_authorizer_count == 1 && local.api_gateway_3_authorizer_policy_arn_count == 0 ? 1 : 0}"
}

resource "aws_iam_role_policy_attachment" "api_gateway_3_authorizer_default" {
  role       = "${aws_iam_role.api_gateway_3_authorizer.name}"
  policy_arn = "${aws_iam_policy.api_gateway_3_authorizer_default.arn}"

  count = "${local.api_gateway_3_authorizer_count == 1 && local.api_gateway_3_authorizer_policy_arn_count == 0 ? 1 : 0}"
}

resource "aws_iam_role_policy_attachment" "api_gateway_3_authorizer_custom" {
  role       = "${aws_iam_role.api_gateway_3_authorizer.name}"
  policy_arn = "${local.api_gateway_3_authorizer_policy_arn}"

  count = "${local.api_gateway_3_authorizer_count + local.api_gateway_3_authorizer_policy_arn_count == 2 ? 1 : 0}"
}

resource "aws_iam_role" "lambda_4" {
  name               = "${local.lambda_4_name_computed}-r-lbd-4"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_4_count}"
}

resource "aws_iam_role_policy" "lambda_4" {
  name   = "${local.lambda_4_name_computed}-p-lbd-4"
  role   = "${aws_iam_role.lambda_4.name}"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.lambda_4_count}"
}

resource "aws_iam_role" "api_gateway_4_authorizer" {
  name               = "${local.lambda_4_name_computed}-r-apiga-4"
  assume_role_policy = "${file("${path.module}/role-api-gateway.json")}"

  count = "${local.api_gateway_4_authorizer_count}"
}

data "template_file" "api_gateway_4_authorizer" {
  template = "${file("${path.module}/policy-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_4_authorizer_lambda_arn}"
  }

  count = "${local.api_gateway_4_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_4_authorizer" {
  name   = "${local.lambda_4_name_computed}-p-apiga-4"
  role   = "${aws_iam_role.api_gateway_4_authorizer.name}"
  policy = "${data.template_file.api_gateway_4_authorizer.rendered}"

  count = "${local.api_gateway_4_authorizer_count}"
}

resource "aws_iam_policy" "api_gateway_4_authorizer_default" {
  name   = "${local.lambda_4_name_computed}-p-apiga-4"
  policy = "${file("${path.module}/policy-cloudwatch.json")}"

  count = "${local.api_gateway_4_authorizer_count == 1 && local.api_gateway_4_authorizer_policy_arn_count == 0 ? 1 : 0}"
}

resource "aws_iam_role_policy_attachment" "api_gateway_4_authorizer_default" {
  role       = "${aws_iam_role.api_gateway_4_authorizer.name}"
  policy_arn = "${aws_iam_policy.api_gateway_4_authorizer_default.arn}"

  count = "${local.api_gateway_4_authorizer_count == 1 && local.api_gateway_4_authorizer_policy_arn_count == 0 ? 1 : 0}"
}

resource "aws_iam_role_policy_attachment" "api_gateway_4_authorizer_custom" {
  role       = "${aws_iam_role.api_gateway_4_authorizer.name}"
  policy_arn = "${local.api_gateway_4_authorizer_policy_arn}"

  count = "${local.api_gateway_4_authorizer_count + local.api_gateway_4_authorizer_policy_arn_count == 2 ? 1 : 0}"
}
