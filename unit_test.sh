#!/bin/bash

# unit test for c- outputs

for FILE in test_files/*.c-; do 
  echo -e '\n'
  ./c- $FILE > test_files/output.out
  file_name=$(basename -- "$FILE")
  echo "***** Testing: $file_name *******************"
  output_file=${file_name%.*}
  diff -y --suppress-common-lines test_files/output.out test_files/${output_file}.out
done
