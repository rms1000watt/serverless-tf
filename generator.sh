#!/usr/bin/env bash
set -e

MAX_FUNCTIONS=5

echo "Requires:"
echo "    sudo pip install jinja2 jinja2-cli"
echo
echo '{"max_functions":'"$MAX_FUNCTIONS"'}' > j2.json


for file in templates/*.j2; do
  out=${file//.j2/}
  out=${out//templates\//}
  echo "Generating: $out"
  jinja2 "$file" j2.json > "$out"
done

rm -rf outputs ||:
mkdir outputs ||:
for file in outputs.*.tf; do
  mv "$file" "outputs/${file//outputs./}"
done

rm j2.json
