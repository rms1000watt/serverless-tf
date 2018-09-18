provider "aws" {
  region = "us-west-2"
}

data "http" "0" {
  url = "https://ipv4.icanhazip.com"
}

locals {
  icanhazip  = "${chomp(data.http.0.body)}"
  current_ip = "${local.icanhazip != "" ? local.icanhazip : "203.0.113.0"}"
}

data "template_file" "0" {
  template = "${file("policy.json.tpl")}"

  vars {
    cidr_blocks = "${join("\",\"", list("${local.current_ip}/32"))}"
  }
}

module "serverless" {
  source = "../.."

  http_policy = "${data.template_file.0.rendered}"

  functions = [
    {
      file      = "../http-go/main.go"
      http_path = "authenticated"
    },
  ]
}

output "http_urls" {
  value = "${module.serverless.http_urls}"
}
