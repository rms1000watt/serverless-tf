#!/usr/bin/env bash
set -e

export AWS_PROFILE=personal
pwd=$(pwd)

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
