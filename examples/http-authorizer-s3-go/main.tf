provider "aws" {
  region = "us-west-2"
}

data "aws_caller_identity" "0" {}

locals {
  policy_name = "test-policy-1"
}

resource "aws_iam_policy" "0" {
  name = "${local.policy_name}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    }
  ]
}
EOF
}

module "serverless" {
  source = "../.."

  functions = [
    {
      file       = "main.go"
      name       = "authorizer-1"
      vendor_cmd = "dep ensure"
    },
    {
      file = "../http-go/main.go"

      http_path                  = "hello-world"
      http_authorizer            = "authorizer-1"
      http_authorizer_policy_arn = "arn:aws:iam::${data.aws_caller_identity.0.account_id}:policy/${local.policy_name}"
    },
  ]
}
