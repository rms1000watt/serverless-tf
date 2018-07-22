#!/usr/bin/env python3

def handler(event, context):
  jsonStr = '{"message":"hello world from serverless-tf"}'
  print(jsonStr)
  return jsonStr


if __name__ == '__main__':
  handler(None, None)
