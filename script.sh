#!/bin/sh

dirname=$(dirname $0)
template=$(cat $dirname/template.html)

while :
do
    sleep 1
    todo=$(one-thing --get)
    echo "${template/"###TODO###"/$todo}" > $dirname/todo.html
done
