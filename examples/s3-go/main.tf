provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "0" {
  bucket = "org-x-super-cool-bucket"
}

module "serverless" {
  source = "../.."

  functions = [
    {
      file      = "main.go"
      s3_bucket = "org-x-super-cool-bucket"
    },
  ]
}
