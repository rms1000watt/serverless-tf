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

for logGroup in $(aws logs describe-log-groups | jq '.logGroups[].logGroupName' | tr -d '"'); do
  echo "Deleting log group: $logGroup"
  aws logs delete-log-group --log-group-name "$logGroup"
done

aws s3 rb s3://org-x-super-cool-bucket
