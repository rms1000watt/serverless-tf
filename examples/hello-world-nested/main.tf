provider "aws" {
  region = "us-west-2"
}

module "serverless" {
  source = "../.."

  functions = [
    {
      file = "go/lambda/main.go"
    },
    {
      file = "py/lambda/main.py"
    },
    {
      file = "js/lambda/main.js"
    },
    {
      file = "go/lambda/main.go"
      name = "nested-go"
    },
    {
      file = "py/lambda/main.py"
      name = "nested-py"
    },
    {
      file = "js/lambda/main.js"
      name = "nested-js"
    },
    {
      file = "../hello-world-go/main.go"
    },
    {
      file = "../hello-world-py/main.py"
    },
    {
      file = "../hello-world-js/main.js"
    },
  ]
}
