// GENERATED FILE: DO NOT EDIT

resource "aws_iam_role" "lambda_0" {
  name               = "${local.lambda_0_name_computed}-role-lambda-0"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_0_count}"
}
