#!/bin/sh

# Generating gamma correction table in C language format.

seq 0 1 255 | awk ' BEGIN { printf "const uint8_t PROGMEM data[] = {\n"; } { if (NR>1) { printf ",\t" } printf " %d", 255*exp(2.2*log((NR-1)/255.0))+0,5 } END { printf "\n};\n" }' | expand | fold -40

# Written by @hohno_at_kuimc and placed in the public domain
# Last update: Thu Jul  8 22:35:23 JST 2021

# The one-liner above is equivalent to the following shell script

# seq 0 1 255 |
# awk '
#   BEGIN {
#     printf "const uint8_t PROGMEM data[] = {\n";
#   }
#   {
#     if (NR>1) { printf ",\t" }
#     printf " %d", 255*exp(2.2*log((NR-1)/255.0))+0,5
#   }
#   END {
#     printf "\n};\n"
#   }' |
# expand |
# fold -40
