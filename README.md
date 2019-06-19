# Serverless TF

## Introduction

I really love [Serverless](https://www.serverless.com) for their ease of use--but a lot of enterprises are already integrated with Terraform. So, this Terraform module was designed to be as simple to use as Serverless by mirroring the structure of `serverless.yml`.

Supported languages:

- Go
- Python
- Javascript

Supported Events:

- S3
- HTTP (API Gateway)
- Schedule (Cloudwatch Cron)

## Contents

- [Usage](#usage)
- [Options](#options)
- [Output](#output)
- [Limitations](#limitations)
- [Alternative Approach](#alternative-approach)
- [TODO](#todo)

## Usage

Similar to the `serverless.yml` spec, functions are first class citizens. Then you define what triggers the function (http, schedule, etc.). The `serverless.yml` structure is flattened at the `events` name has been omitted. Look at the examples below for more clarity.

### Just a Lambda Function

As seen in [Example: Hello World Go](https://github.com/rms1000watt/serverless-tf/blob/master/examples/hello-world-go/main.tf)

```hcl
module "serverless" {
  source = "rms1000watt/serverless-tf/aws"

  functions = [
    {
      file = "main.go"
    },
  ]
}
```

As seen in [Example: Hello World Py](https://github.com/rms1000watt/serverless-tf/blob/master/examples/hello-world-py/main.tf)

```hcl
module "serverless" {
  source = "rms1000watt/serverless-tf/aws"

  functions = [
    {
      file = "main.py"
    },
  ]
}
```

As seen in [Example: Hello World JS](https://github.com/rms1000watt/serverless-tf/blob/master/examples/hello-world-js/main.tf)

```hcl
module "serverless" {
  source = "rms1000watt/serverless-tf/aws"

  functions = [
    {
      file = "main.js"
    },
  ]
}
```

### HTTP (API Gateway)

As seen in [Example: HTTP Go](https://github.com/rms1000watt/serverless-tf/blob/master/examples/http-go/main.tf)

```hcl
module "serverless" {
  source = "rms1000watt/serverless-tf/aws"

  functions = [
    {
      file       = "main.go"
      http_path  = "hello-world"
    },
  ]
}
```

Then test by running:

```bash
curl https://$API_DEPLOYMENT_ID.execute-api.$REGION.amazonaws.com/dev/hello-world
```

### Schedule (Cloudwatch Event)

As seen in [Example: Schedule Go](https://github.com/rms1000watt/serverless-tf/blob/master/examples/schedule-go/main.tf)

```hcl
module "serverless" {
  source = "rms1000watt/serverless-tf/aws"

  functions = [
    {
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
    },
  ]
}
```

### S3 Event

As seen in [Example: S3 Go](https://github.com/rms1000watt/serverless-tf/blob/master/examples/s3-go/main.tf)

```hcl
module "serverless" {
  source = "../.."

  functions = [
    {
      file      = "main.go"
      s3_bucket = "org-x-super-cool-bucket"
    },
  ]
}
```

### Different Regions

As seen in [Example: Regions Go](https://github.com/rms1000watt/serverless-tf/blob/master/examples/regions-go/main.tf)

```hcl
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
  ]
}
```

### Combination of Events

```hcl
module "serverless" {
  source = "rms1000watt/serverless-tf/aws"

  functions = [
    {
      file = "main.go"
    },
    {
      file          = "main.go"
      http_path     = "hello-world"
      schedule_rate = "rate(2 hours)"
    },
    {
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
    },
    {
      file       = "main.go"
      http_path  = "hello-world-again"
    },
  ]
}
```

### Override Lambda Role/Policy

See [Example: HTTP S3 Go](https://github.com/rms1000watt/serverless-tf/blob/master/examples/http-s3-go/main.tf) for an example to override Lambda Role/Policy allowing it to connect to an S3 bucket.

### HTTP with Authorizer

As seen in [Example: HTTP Authorizer Go](https://github.com/rms1000watt/serverless-tf/blob/master/examples/http-authorizer-go/main.tf)

```hcl
module "serverless" {
  source = "../.."

  functions = [
    {
      file       = "main.go"
      name       = "authorizer-1"
      vendor_cmd = "dep ensure"
    },
    {
      file = "../hello-world-go/main.go"

      http_path       = "hello-world"
      http_authorizer = "authorizer-1"
    },
  ]
}
```

### HTTP with Authorizer with Custom Policy

As seen in [Example: HTTP Authorizer S3 Go](https://github.com/rms1000watt/serverless-tf/blob/master/examples/http-authorizer-s3-go/main.tf) to override authorizer with a custom policy.

## Options

Here are the options that each function supports.

```hcl
module "serverless" {
  source = "rms1000watt/serverless-tf/aws"

  service     = "" // optional (default: folder name)
  stage       = "" // optional (default: dev)
  http_policy = "" // optional (default: "") (usage: Global API Gateway policy to restrict access)

  functions = [
    {
      file       = "main.go"       // required (usage: relative path to file: main.go, ../main.go, path/to/main.go)
      vendor_cmd = "dep ensure" // optional (default: "")
      test_cmd   = "go test ./..." // optional (default: "")
      name       = ""              // optional (default: folder name + basename(file) + list_index, only required if this will be authorizer)
      runtime    = ""              // optional (default: go1.x for *.go, python3.6 for *.py, nodejs8.10 for *.js)
      handler    = ""              // optional (default: ${basename(file)})
      rebuild    = ""              // optional (default: never)
      role_arn   = ""              // optional (default: default role with cloudwatch access: role-lambda.json)
      env_keys   = ""              // optional (default: "") (usage: space delimited list: "KEY1 KEY2 KEY3")
      env_vals   = ""              // optional (default: "") (usage: space delimited list: "value1 value2 value3")
      region     = ""              // optional (default: "") (usage: define a different region to deploy the function + events within)

      http                       = "" // optional (default: "" unless any http_OPTS are defined)
      http_path                  = "" // optional (default: lambda_name when http = true)
      http_method                = "" // optional (default: GET when http = true)
      http_metrics               = "" // optional (default: "" when http = true)
      http_logging               = "" // optional (default: "" when http = true)
      http_authorizer            = "" // optional (default: "" specify function name you want to use as CUSTOM REQUEST authorizer)
      http_authorizer_policy_arn = "" // optional (default: "" specify policy arn if you need additional permissions)

      schedule      = "" // optional (default: "" unless any schedule_OPTS are defined)
      schedule_rate = "" // optional (default: rate(1 hour))

      s3_bucket = "" // optional (default: "") (usage: bucket must exist with this name)
      s3_events = "" // optional (default: "s3:ObjectRemoved:* s3:ObjectCreated:* s3:ReducedRedundancyLostObject" when s3_bucket != "") (usage: space delimited list)
      s3_prefix = "" // optional (default: "")
      s3_suffix = "" // optional (default: "")

      cloudwatch_event_pattern = "" // optional (default: "") (usage: a cloudwatch event pattern in a file or HEREDOC style)
    },
  ]
}
```

## Output

Since this is a module, the ouput needs to be mapped from the module to your implementation. Many outputs have been stubbed out. Look at the `outputs` directory for some stubs.

## Limitations

- Up to 5 functions per module (configurable.. update `generator.sh` then submit a PR)
- No duplicate event-type per function (ie. only 1 `http_path` per function)
- Depth of 1 API Gateway path
- No dynamic path parameters in API Gateway

(Please contribute if you need this functionality)

## Alternative Approach

An alternative approach for full Serverless functionality would be to create a Golang binary with file-packed templates that accepts and parses `serverless.yml` as input and generates all the Terraform files as output. The trade-off is between limited functionality without changing your Terraform toolset or getting full functionality but changing your toolset/pipeline.

## TODO

- [ ] SQS
- [ ] SNS
- [ ] Cloudwatch Event
- [ ] Cloudwatch Log
- [ ] Kinesis
- [ ] Dynamo
- [ ] Cognito
