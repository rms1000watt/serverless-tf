provider "aws" {
  region = "us-west-2"
}

data "aws_caller_identity" "0" {}

locals {
  user_id     = "${data.aws_caller_identity.0.user_id}"
  account_id  = "${data.aws_caller_identity.0.account_id}"
  role_name   = "test-role-${local.user_id}"
  bucket_name = "test-bucket-${lower(local.user_id)}"
}

resource "aws_s3_bucket" "0" {
  bucket = "${local.bucket_name}"
  acl    = "private"
}

resource "aws_iam_role" "0" {
  name               = "${local.role_name}"
  assume_role_policy = "${file("role.json")}"
}

data "template_file" "0" {
  template = "${file("policy.json")}"

  vars {
    bucket_id = "${local.bucket_name}"
  }
}

resource "aws_iam_role_policy" "0" {
  name   = "test-role-policy-${local.user_id}"
  role   = "${aws_iam_role.0.name}"
  policy = "${data.template_file.0.rendered}"
}

module "serverless" {
  source = "../.."

  functions = [
    {
      file       = "main.go"
      vendor_cmd = "dep ensure"
      role_arn   = "arn:aws:iam::${local.account_id}:role/${local.role_name}"
      http_path  = "s3-get"

      env_keys = "S3_BUCKET"
      env_vals = "${local.bucket_name}"
    },
  ]
}
