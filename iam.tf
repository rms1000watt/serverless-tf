resource "aws_iam_role" "lambda_0" {
  name               = "${local.lambda_0_name_computed}"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"
  count              = "${local.lambda_0_count}"
}
