#!/bin/bash
count=`ps -ef|grep nginx|grep -v grep|wc -l`
if [ $count -gt 0 ];then
    exit 0
else
    exit 1
fi