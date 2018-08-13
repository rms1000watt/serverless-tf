#!/usr/bin/env bash
set -e

./generator.sh

export AWS_PROFILE=personal
pwd=$(pwd)

aws s3 mb s3://org-x-super-cool-bucket

for dir in examples/*; do
  echo "Testing: $dir"
  cd "$dir"
  rm -rf .terraform/modules ||:
  terraform init
  terraform apply -auto-approve
  terraform destroy -auto-approve
  cd "$pwd"

  echo "Done: Sleeping 5s"
  sleep 5
done

for region in us-east-1 us-east-2 us-west-1 us-west-2 ap-south-1 ap-northeast-1 ap-northeast-2 ap-southeast-1 ap-southeast-2 ca-central-1 sa-east-1 eu-central-1 eu-west-1 eu-west-2 eu-west-3; do
  export AWS_REGION=$region
  export AWS_DEFAULT_REGION=$region
  echo "Handling region: $region"
  for logGroup in $(aws logs describe-log-groups | jq '.logGroups[].logGroupName' | tr -d '"'); do
    echo "Deleting log group: $logGroup"
    aws logs delete-log-group --log-group-name "$logGroup"
  done
done

aws s3 rb s3://org-x-super-cool-bucket
