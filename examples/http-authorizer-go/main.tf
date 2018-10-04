provider "aws" {
  region = "us-west-2"
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

      http_path       = "hello-world"
      http_authorizer = "authorizer-1"
    },
  ]
}
