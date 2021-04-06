#!/bin/sh

for full in *.c-
do
    file=`basename $full '.c-'`

    {
       echo "===================================="
       echo "FILE: $file.c-"
       ../../c- -P $file.c-
    }  > $file.test
    if [ -s $file.out ]
    then
        if cmp $file.test $file.out > /dev/null
        then
            echo $file.c- OK
        else
            sdiff -w200 $file.test $file.out > $file.diff
            echo $file.c- BAD
        fi
    else
        echo "$file.c- BAD : No expected output for test file: $file.c-"
    fi
done
