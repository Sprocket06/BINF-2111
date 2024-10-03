#!/bin/bash

infile=$1
start_line=$2
end_line=$3
sed -n "${start_line},${end_line}p" $infile
