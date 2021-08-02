#! /bin/sh

# getNTPdata.sh
# Last update: Thu Apr  9 06:34:13 JST 2020 by @hohno_at_kuimc

# Public domain

NTPserver="ntp.nict.jp"

(echo; sleep 0.1) \
| gawk '{printf "%c", 35; for(i=0;i<47;i++){printf "%c", 0};fflush()}' \
| nc -c -u ${NTPserver} 123 \
| ptw hexdump \
| gawk '{if($1=="0000000"){cnt=1}else{cnt++};if(cnt!=3){printf "%s ",$0}else{printf "%s\n",$0};fflush()}' \
| gsed -u -e 's/00000[0-2]0 //g'
