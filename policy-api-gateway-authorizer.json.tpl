{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams",
        "logs:PutLogEvents",
        "logs:GetLogEvents",
        "logs:FilterLogEvents"
      ],
      "Resource": "arn:aws:logs:*:*:*"
    },
    {
      "Effect": "Allow",
      "Action": "lambda:InvokeFunction",
      "Resource": "arn:aws:lambda:${region}:${account_id}:function:${authorizer_lambda_arn}",
      "Condition": {
        "ArnLike": {
          "AWS:SourceArn": "arn:aws:execute-api:${region}:${account_id}:*/authorizers/*"
        }
      }
    }
  ]
}
