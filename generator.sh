#!/usr/bin/env bash

MAX_FUNCTIONS=10
MAX_EVENTS=5

echo "Requires:"
echo "    sudo pip install jinja2 jinja2-cli"
echo
echo '{"max_functions":'"$MAX_FUNCTIONS"',"max_events":'"$MAX_EVENTS"'}' > j2.json

for file in templates/*.j2; do
  out=${file//.j2/}
  out=${out//templates\//}
  echo "Generating: $out"
  # jinja2 "$file" j2.json > "$out"
done

rm j2.json
