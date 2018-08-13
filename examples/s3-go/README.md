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

Usually you'll have your bucket setup beforehand. This `main.tf` also sets up an S3 bucket in parallel.. so, there may be a race condition where the S3 bucket isn't provisioned in time. If that happens.. just `terraform apply` again
