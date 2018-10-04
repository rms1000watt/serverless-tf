provider "aws" {
  region = "us-west-2"
}

module "serverless" {
  source = "../.."

  functions = [
    {
      file       = "main.go"
      vendor_cmd = "dep ensure"
      test_cmd   = "go test ./..."
      http_path  = "hello-world"
    },
  ]
}
