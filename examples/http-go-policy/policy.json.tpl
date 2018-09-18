{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "execute-api:Invoke",
      "Resource": "*",
      "Condition": {
          "IpAddress": {
              "aws:SourceIp": ["${cidr_blocks}"]
          }
      }
    }
  ]
}
