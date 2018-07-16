# Serverless TF

## Introduction

I really love [Serverless](https://www.serverless.com) for their ease of use--but a lot of enterprises are already integrated with Terraform. So, this Terraform module is designed to be as simple to use as Serverless by using a similar naming and structure conventions as a `serverless.yml` file.

## Contents

- [Limitations](#limitations)
- [TODO](#todo)

## Limitations

- Up to 10 functions per module
- Up to 5 events per function

## TODO

- [ ] examples/hellow-world-py
- [ ] examples/hellow-world-js
- [ ] env vars in lambda (nested map in map in list)
