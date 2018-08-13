# S3 Go

## Introduction

This sets up S3 Event + 1 Lambda function in Go

## Usage

```bash
aws s3 mb s3://org-x-super-cool-bucket

terraform init
terraform apply

aws s3 rb s3://org-x-super-cool-bucket
```
