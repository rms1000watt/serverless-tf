# Serverless TF

## Introduction

I really love [Serverless](https://www.serverless.com) for their ease of use--but a lot of enterprises are already integrated with Terraform. So, this Terraform module is designed to be as simple to use as Serverless by using a similar naming and structure conventions as a `serverless.yml` file.

## Contents

- [Limitations](#limitations)
- [Alternative Approach](#alternative-approach)
- [TODO](#todo)

## Limitations

- Up to 10 functions per module
- No duplicate event-type per function

## Alternative Approach

An alternative approach for full Serverless functionaliity would be to create a Golang binary with file-packed templates that accepts and parses `serverless.yml` as input and generates all the Terraform files as output. The trade-off is between limited functionality without changing your Terraform toolset or getting full functionality but changing your toolset/pipeline.

## TODO

- [ ] `schedule` event
- [ ] cloudwatch logs
- [ ] better Readme (docs)
- [ ] examples/hellow-world-py
- [ ] examples/hellow-world-js
- [ ] env vars in lambda as string mapped to map (VAR1=val1 VAR2=val2 VAR3=val3)
