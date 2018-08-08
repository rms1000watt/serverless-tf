# HTTP Authorizer Go

## Introduction

This sets up API Gateway + 2x Lambda functions. 1 Lambda function is designated as the API Gateway Authorizer, and other Lambda function gets executed and returned to the client

## Usage

You have to pass in the authorization header for success

```bash
curl -H 'Authorization:pizza' https://$API_ID.execute-api.us-west-2.amazonaws.com/dev/hello-world
```
