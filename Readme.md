# Serverless TF

## Introduction

I really love [Serverless](https://www.serverless.com) for their ease of use--but a lot of enterprises are already integrated with Terraform. So, this Terraform module is designed to be as simple to use as Serverless by using a similar naming and structure conventions as a `serverless.yml` file.

## Contents

- [Limitations](#limitations)
- [Alternative Approach](#alternative-approach)
- [TODO](#todo)

## Limitations

- Up to 10 functions per module
- 1 event-type per function (http + schedule is OK for 1 function (2 event-types). http + http is not OK for 1 function (1 event-type).)

## Alternative Approach

An alternative approach for full Serverless functionaliity would be to create a Golang binary with file-packed templates that accepts and parses `serverless.yml` as input and generates all the Terraform files as output. The trade-off is between limited functionality without changing your Terraform toolset or getting full functionality but changing your toolset/pipeline.

## TODO

- [ ] examples/hellow-world-py
- [ ] examples/hellow-world-js
- [ ] env vars in lambda (nested map in map in list)
