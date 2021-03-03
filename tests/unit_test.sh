#!/bin/bash

# unit test for c- outputs
hw=hw2
for FILE in test_files/${hw}_test_files/*.c-; do 
  echo -e '\n'
  ./c- -p $FILE > test_files/output.out
  file_name=$(basename -- "$FILE")
  echo "***** Testing: $file_name *******************"
  output_file=${file_name%.*}
  hw = hw2
  diff -y --suppress-common-lines test_files/output.out test_files/${hw}_test_files/${output_file}.out
done
