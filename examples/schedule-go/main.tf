provider "aws" {
  region = "us-west-2"
}

module "serverless" {
  source = "../.."

  functions = [
    {
      file          = "main.go"
      vendor_cmd    = "govendor sync"
      test_cmd      = "go test ./..."
      schedule_rate = "rate(1 minute)"
    },
  ]
}
