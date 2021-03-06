#!/bin/bash

###############################################################
## Add header $1 to file $2
## For example, add header "Chr Gene nSNPs" to file test.txt
##   Using ./add_header.sh "Chr Gene nSNPS" test.txt
## Use "\t" if the delimiter is tab, like "Chr\tGene\tnSNPs"
###############################################################

echo -e $1 > file_$1.tmp
cat $2 >> file_$1.tmp
mv file_$1.tmp $2
