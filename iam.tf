// GENERATED FILE: DO NOT EDIT

resource "aws_iam_role" "lambda_0" {
  name               = "${local.lambda_0_name_computed}-role-lambda-0"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_0_count}"
}

resource "aws_iam_role" "lambda_1" {
  name               = "${local.lambda_1_name_computed}-role-lambda-1"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_1_count}"
}

resource "aws_iam_role" "lambda_2" {
  name               = "${local.lambda_2_name_computed}-role-lambda-2"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_2_count}"
}

resource "aws_iam_role" "lambda_3" {
  name               = "${local.lambda_3_name_computed}-role-lambda-3"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_3_count}"
}

resource "aws_iam_role" "lambda_4" {
  name               = "${local.lambda_4_name_computed}-role-lambda-4"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_4_count}"
}

resource "aws_iam_role" "lambda_5" {
  name               = "${local.lambda_5_name_computed}-role-lambda-5"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_5_count}"
}

resource "aws_iam_role" "lambda_6" {
  name               = "${local.lambda_6_name_computed}-role-lambda-6"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_6_count}"
}

resource "aws_iam_role" "lambda_7" {
  name               = "${local.lambda_7_name_computed}-role-lambda-7"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_7_count}"
}

resource "aws_iam_role" "lambda_8" {
  name               = "${local.lambda_8_name_computed}-role-lambda-8"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_8_count}"
}

resource "aws_iam_role" "lambda_9" {
  name               = "${local.lambda_9_name_computed}-role-lambda-9"
  assume_role_policy = "${file("${path.module}/role-lambda.json")}"

  count              = "${local.lambda_9_count}"
}
