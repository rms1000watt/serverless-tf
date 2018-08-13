provider "aws" {
  region = "us-west-2"
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
