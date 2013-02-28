#!/bin/bash

sofar="$(echo "$1" | awk 'BEGIN{FS=":"}{print $1}')" ;
val=$(( $(echo $sofar | wc -w) + 1 ))
outer="$(cat all.txt | grep "^$sofar" | awk -v v=$val '{print $v}' | ./count_top_words.sh | awk 'BEGIN{OFS=":"}{print $2,$1}')";
echo "$outer"
