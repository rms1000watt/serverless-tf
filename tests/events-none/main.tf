provider "aws" {
  region = "us-west-2"
}

module "serverless_0" {
  source = "../.."

  functions = [
    {
      file = "main.go"
    },
  ]
}

module "serverless_1" {
  source = "../.."

  service = "pizza"

  functions = [
    {
      file = "main.go"
    },
  ]
}

module "serverless_2" {
  source = "../.."

  service = "burger"

  functions = [
    {
      file = "main.go"
      name = "fish-func"
    },
  ]
}
