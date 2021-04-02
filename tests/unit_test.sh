#!/bin/bash

# unit test for c- outputs
hw=hw4
for FILE in test_files/${hw}_test_files/*.c-; do 
  echo -e '\n'
  ./c- -P $FILE > test_files/output.out
  file_name=$(basename -- "$FILE")
  echo "***** Testing: $file_name *******************"
  output_file=${file_name%.*}
  diff --width=230 -y test_files/output.out test_files/${hw}_test_files/${output_file}.out
  # diff -y --suppress-common-lines test_files/output.out test_files/${hw}_test_files/${output_file}.out

  if [ "${output_file}.c-" == "array.c-" ] ; then
    exit 1
    fi

done
