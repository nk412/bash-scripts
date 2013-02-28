#!/bin/bash
cat $1 | tr ' ' '\
' | grep . | tr '[:upper:]' '[:lower:]' | 
tr -d '[:punct:]' | grep -v '[^a-z]' | 
sort | uniq -c | sort -rn | head -n 5
