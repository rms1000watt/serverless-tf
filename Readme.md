# Serverless TF

## Introduction

I really love [Serverless](https://www.serverless.com) for their ease of use--but a lot of enterprises are already integrated with Terraform. So, this Terraform module is designed to be as simple to use as Serverless by using a similar naming and structure conventions as a `serverless.yml` file.

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
  source = "github.com/rms1000watt/serverless-tf"

  functions = [
    {
      file = "main.go"
    },
  ]
}
```

### HTTP (API Gateway)

As seen in [Example: HTTP Go](https://github.com/rms1000watt/serverless-tf/blob/master/examples/http-go/main.tf)

```hcl
module "serverless" {
  source = "github.com/rms1000watt/serverless-tf"

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
curl https://$API_DEPLOYMENT_ID.execute-api.$REGION.amazonaws.com/prod/hello-world
```

### Schedule (Cloudwatch Event)

As seen in [Example: Schedule Go](https://github.com/rms1000watt/serverless-tf/blob/master/examples/schedule-go/main.tf)

```hcl
module "serverless" {
  source = "github.com/rms1000watt/serverless-tf"

  functions = [
    {
      file          = "main.go"
      schedule_rate = "rate(1 minute)"
    },
  ]
}
```

### Combination of Events

```hcl
module "serverless" {
  source = "github.com/rms1000watt/serverless-tf"

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

## Options

Here are the options that each function supports.

```hcl
module "serverless" {
  source = "github.com/rms1000watt/serverless-tf"

  service = "" // optional (default: folder name)

  functions = [
    {
      file       = "main.go"
      vendor_cmd = "govendor sync" // optional (default: "")
      test_cmd   = "go test ./..." // optional (default: "")
      name       = ""              // optional (default: folder name + basename(file) + list_index)
      runtime    = ""              // optional (default: go1.x)
      handler    = ""              // optional (default: ${basename(file)})

      http               = ""   // optional (default: "" unless any http_OPTS are defined)
      http_path          = ""   // optional (default: lambda_name when http = true)
      http_method        = ""   // optional (default: GET when http = true)
      http_authorization = ""   // optional (default: NONE when http = true)
      http_stage         = ""   // optional (default: prod when http = true)

      schedule      = ""    // optional (default: "" unless any schedule_OPTS are defined)
      schedule_rate = ""    // optional (default: rate(1 hour))
    },
  ]
}
```

## Output

Since this is a module, the ouput needs to be mapped from the module to your implementation. Many outputs have been stubbed out. Look at the `outputs` directory for some stubs.

## Limitations

- Up to 10 functions per module (configurable.. update `generator.sh` then submit a PR)
- No duplicate event-type per function (ie. only 1 `http_path` per function)

## Alternative Approach

An alternative approach for full Serverless functionality would be to create a Golang binary with file-packed templates that accepts and parses `serverless.yml` as input and generates all the Terraform files as output. The trade-off is between limited functionality without changing your Terraform toolset or getting full functionality but changing your toolset/pipeline.

## TODO

- [ ] better Readme (docs)
- [ ] cloudwatch logs for API Gateway
- [ ] more restrictive cloudwatch logs
- [ ] more granular lambda roles
- [ ] examples/hellow-world-py
- [ ] examples/hellow-world-js
- [ ] env vars in lambda as string mapped to map (VAR1=val1 VAR2=val2 VAR3=val3)
