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

resource "aws_iam_role" "api_gateway_0_authorizer" {
  name               = "${local.lambda_0_name_computed}-r-apiga-0"
  assume_role_policy = "${file("${path.module}/role-api-gateway-authorizer.json")}"

  count = "${local.api_gateway_0_authorizer_count}"
}

data "template_file" "api_gateway_0_authorizer" {
  template = "${file("${path.module}/policy-api-gateway-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_0_authorizer_lambda_arn}"
    region                = "${data.aws_region.current.name}"
    account_id            = "${data.aws_caller_identity.current.account_id}"
  }

  count = "${local.api_gateway_0_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_0_authorizer" {
  name   = "${local.lambda_0_name_computed}-p-apiga-0"
  role   = "${aws_iam_role.api_gateway_0.name}"
  policy = "${data.template_file.api_gateway_0_authorizer.rendered}"

  count = "${local.api_gateway_0_authorizer_count}"
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

resource "aws_iam_role" "api_gateway_1_authorizer" {
  name               = "${local.lambda_1_name_computed}-r-apiga-1"
  assume_role_policy = "${file("${path.module}/role-api-gateway-authorizer.json")}"

  count = "${local.api_gateway_1_authorizer_count}"
}

data "template_file" "api_gateway_1_authorizer" {
  template = "${file("${path.module}/policy-api-gateway-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_1_authorizer_lambda_arn}"
    region                = "${data.aws_region.current.name}"
    account_id            = "${data.aws_caller_identity.current.account_id}"
  }

  count = "${local.api_gateway_1_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_1_authorizer" {
  name   = "${local.lambda_1_name_computed}-p-apiga-1"
  role   = "${aws_iam_role.api_gateway_1.name}"
  policy = "${data.template_file.api_gateway_1_authorizer.rendered}"

  count = "${local.api_gateway_1_authorizer_count}"
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

resource "aws_iam_role" "api_gateway_2_authorizer" {
  name               = "${local.lambda_2_name_computed}-r-apiga-2"
  assume_role_policy = "${file("${path.module}/role-api-gateway-authorizer.json")}"

  count = "${local.api_gateway_2_authorizer_count}"
}

data "template_file" "api_gateway_2_authorizer" {
  template = "${file("${path.module}/policy-api-gateway-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_2_authorizer_lambda_arn}"
    region                = "${data.aws_region.current.name}"
    account_id            = "${data.aws_caller_identity.current.account_id}"
  }

  count = "${local.api_gateway_2_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_2_authorizer" {
  name   = "${local.lambda_2_name_computed}-p-apiga-2"
  role   = "${aws_iam_role.api_gateway_2.name}"
  policy = "${data.template_file.api_gateway_2_authorizer.rendered}"

  count = "${local.api_gateway_2_authorizer_count}"
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

resource "aws_iam_role" "api_gateway_3_authorizer" {
  name               = "${local.lambda_3_name_computed}-r-apiga-3"
  assume_role_policy = "${file("${path.module}/role-api-gateway-authorizer.json")}"

  count = "${local.api_gateway_3_authorizer_count}"
}

data "template_file" "api_gateway_3_authorizer" {
  template = "${file("${path.module}/policy-api-gateway-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_3_authorizer_lambda_arn}"
    region                = "${data.aws_region.current.name}"
    account_id            = "${data.aws_caller_identity.current.account_id}"
  }

  count = "${local.api_gateway_3_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_3_authorizer" {
  name   = "${local.lambda_3_name_computed}-p-apiga-3"
  role   = "${aws_iam_role.api_gateway_3.name}"
  policy = "${data.template_file.api_gateway_3_authorizer.rendered}"

  count = "${local.api_gateway_3_authorizer_count}"
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

resource "aws_iam_role" "api_gateway_4_authorizer" {
  name               = "${local.lambda_4_name_computed}-r-apiga-4"
  assume_role_policy = "${file("${path.module}/role-api-gateway-authorizer.json")}"

  count = "${local.api_gateway_4_authorizer_count}"
}

data "template_file" "api_gateway_4_authorizer" {
  template = "${file("${path.module}/policy-api-gateway-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_4_authorizer_lambda_arn}"
    region                = "${data.aws_region.current.name}"
    account_id            = "${data.aws_caller_identity.current.account_id}"
  }

  count = "${local.api_gateway_4_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_4_authorizer" {
  name   = "${local.lambda_4_name_computed}-p-apiga-4"
  role   = "${aws_iam_role.api_gateway_4.name}"
  policy = "${data.template_file.api_gateway_4_authorizer.rendered}"

  count = "${local.api_gateway_4_authorizer_count}"
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

resource "aws_iam_role" "api_gateway_5_authorizer" {
  name               = "${local.lambda_5_name_computed}-r-apiga-5"
  assume_role_policy = "${file("${path.module}/role-api-gateway-authorizer.json")}"

  count = "${local.api_gateway_5_authorizer_count}"
}

data "template_file" "api_gateway_5_authorizer" {
  template = "${file("${path.module}/policy-api-gateway-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_5_authorizer_lambda_arn}"
    region                = "${data.aws_region.current.name}"
    account_id            = "${data.aws_caller_identity.current.account_id}"
  }

  count = "${local.api_gateway_5_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_5_authorizer" {
  name   = "${local.lambda_5_name_computed}-p-apiga-5"
  role   = "${aws_iam_role.api_gateway_5.name}"
  policy = "${data.template_file.api_gateway_5_authorizer.rendered}"

  count = "${local.api_gateway_5_authorizer_count}"
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

resource "aws_iam_role" "api_gateway_6_authorizer" {
  name               = "${local.lambda_6_name_computed}-r-apiga-6"
  assume_role_policy = "${file("${path.module}/role-api-gateway-authorizer.json")}"

  count = "${local.api_gateway_6_authorizer_count}"
}

data "template_file" "api_gateway_6_authorizer" {
  template = "${file("${path.module}/policy-api-gateway-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_6_authorizer_lambda_arn}"
    region                = "${data.aws_region.current.name}"
    account_id            = "${data.aws_caller_identity.current.account_id}"
  }

  count = "${local.api_gateway_6_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_6_authorizer" {
  name   = "${local.lambda_6_name_computed}-p-apiga-6"
  role   = "${aws_iam_role.api_gateway_6.name}"
  policy = "${data.template_file.api_gateway_6_authorizer.rendered}"

  count = "${local.api_gateway_6_authorizer_count}"
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

resource "aws_iam_role" "api_gateway_7_authorizer" {
  name               = "${local.lambda_7_name_computed}-r-apiga-7"
  assume_role_policy = "${file("${path.module}/role-api-gateway-authorizer.json")}"

  count = "${local.api_gateway_7_authorizer_count}"
}

data "template_file" "api_gateway_7_authorizer" {
  template = "${file("${path.module}/policy-api-gateway-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_7_authorizer_lambda_arn}"
    region                = "${data.aws_region.current.name}"
    account_id            = "${data.aws_caller_identity.current.account_id}"
  }

  count = "${local.api_gateway_7_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_7_authorizer" {
  name   = "${local.lambda_7_name_computed}-p-apiga-7"
  role   = "${aws_iam_role.api_gateway_7.name}"
  policy = "${data.template_file.api_gateway_7_authorizer.rendered}"

  count = "${local.api_gateway_7_authorizer_count}"
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

resource "aws_iam_role" "api_gateway_8_authorizer" {
  name               = "${local.lambda_8_name_computed}-r-apiga-8"
  assume_role_policy = "${file("${path.module}/role-api-gateway-authorizer.json")}"

  count = "${local.api_gateway_8_authorizer_count}"
}

data "template_file" "api_gateway_8_authorizer" {
  template = "${file("${path.module}/policy-api-gateway-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_8_authorizer_lambda_arn}"
    region                = "${data.aws_region.current.name}"
    account_id            = "${data.aws_caller_identity.current.account_id}"
  }

  count = "${local.api_gateway_8_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_8_authorizer" {
  name   = "${local.lambda_8_name_computed}-p-apiga-8"
  role   = "${aws_iam_role.api_gateway_8.name}"
  policy = "${data.template_file.api_gateway_8_authorizer.rendered}"

  count = "${local.api_gateway_8_authorizer_count}"
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

resource "aws_iam_role" "api_gateway_9_authorizer" {
  name               = "${local.lambda_9_name_computed}-r-apiga-9"
  assume_role_policy = "${file("${path.module}/role-api-gateway-authorizer.json")}"

  count = "${local.api_gateway_9_authorizer_count}"
}

data "template_file" "api_gateway_9_authorizer" {
  template = "${file("${path.module}/policy-api-gateway-authorizer.json.tpl")}"

  vars {
    authorizer_lambda_arn = "${local.api_gateway_9_authorizer_lambda_arn}"
    region                = "${data.aws_region.current.name}"
    account_id            = "${data.aws_caller_identity.current.account_id}"
  }

  count = "${local.api_gateway_9_authorizer_count}"
}

resource "aws_iam_role_policy" "api_gateway_9_authorizer" {
  name   = "${local.lambda_9_name_computed}-p-apiga-9"
  role   = "${aws_iam_role.api_gateway_9.name}"
  policy = "${data.template_file.api_gateway_9_authorizer.rendered}"

  count = "${local.api_gateway_9_authorizer_count}"
}
