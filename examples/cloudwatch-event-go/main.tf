provider "aws" {
  region = "us-west-2"
}

module "cloudwatch_event" {
  source = "../.."

  functions = [
    {
      file                     = "main.go"
      cloudwatch_event_pattern = "${file("cloudwatch-event-pattern.json")}"
    },
  ]
}
