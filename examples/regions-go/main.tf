provider "aws" {
  region = "us-west-2"
}

module "serverless" {
  source = "../.."

  functions = [
    {
      region        = "us-east-1"
      file          = "../http-go/main.go"
      schedule_rate = "rate(1 hour)"
      http_path     = "hello-world"
    },
    {
      region        = "us-east-2"
      file          = "../http-go/main.go"
      schedule_rate = "rate(1 hour)"
      http_path     = "hello-world"
    },
    {
      region        = "us-west-1"
      file          = "../http-go/main.go"
      schedule_rate = "rate(1 hour)"
      http_path     = "hello-world"
    },
  ]
}
