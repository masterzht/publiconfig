#!/bin/bash
# 每段视频都翻译成日语英语中文
files=$(find  $1 -name "*.mp4")

for dir in $files
do
    autosub -S ja -D ja -i $dir
    autosub -S ja -D en -i $dir
    autosub -S ja -D zh-cn -i $dir
done
