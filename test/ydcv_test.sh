#!/bin/sh

file="words.txt"

ydcv_path="../src/ydcv.py"
if [ ! -f "$file" ]
then 
    echo "ydcv not exists!"
    exit 1
fi


if [ ! -f "$file" ]
then
    curl https://raw.githubusercontent.com/jingyugao/google-10000-english/master/google-10000-english-usa-no-swears-long.txt >$file
fi

cat $file | while read LINE  
do
        python $ydcv_path $LINE >/dev/null
done