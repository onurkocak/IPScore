#!/bin/bash
cat - | awk -F, '{split($1, d, " ");printf d[5]d[6]","$2","; for(i = 1; i <= NF; ++i) if($i ~ /^srcip=/ || $i ~ /^srcintf=/ || $i ~ /^dstip=/ || $i ~ /^dstport=/ || $i ~ /^dstintf=/ || $i ~ /^action=/) printf $i","; else if ($i ~ /^service=/) printf $i;  print ""} END {print ""}';
