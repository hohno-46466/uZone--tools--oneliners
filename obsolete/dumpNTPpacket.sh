#! /bin/sh

# dumpNTPpacket.sh
# Last update: Thu Apr  9 06:34:13 JST 2020 by @hohno_at_kuimc

# Public domain

gawk '{
  if (NF==48){
    printf "LI = %d\nVN = %d\nMode = %d\n"\
    "stratum = %d\n"\
    "poll = %d\n"\
    "precision = %d\n"\
    "RootDelay = %d\n"\
    "RootDispersion = %d\n"\
    "ReferenceID = %c%c%c%c\n"\
    "RefTime = %ld + %f\n"\
    "OrigTime = %ld + %f\n"\
    "RecTime = %ld + %f\n"\
    "TrnsTime = %ld + %f\n",
    int(strtonum("0x" $1)/64),
    int(strtonum("0x" $1)/8)%8,
    strtonum("0x" $1)%8,
    $2,$3,$4,
    strtonum("0x" $5  $6  $7  $8),
    strtonum("0x" $9  $10 $11 $12),
    strtonum("0x" $13), strtonum("0x" $14), strtonum("0x" $15), strtonum("0x" $16),
    strtonum("0x" $17 $18 $19 $20),
    strtonum("0x" $21)/256.0+ strtonum("0x" $22)/(256*256.0)+ strtonum("0x" $23)/(256*256*256.0)+ strtonum("0x" $24)/(256256**256*256.0),
    strtonum("0x" $25 $26 $27 $28),
    strtonum("0x" $29)/256.0+ strtonum("0x" $30)/(256*256.0)+ strtonum("0x" $31)/(256*256*256.0)+ strtonum("0x" $32)/(256256**256*256.0),
    strtonum("0x" $33 $34 $35 $36),
    strtonum("0x" $37)/256.0+ strtonum("0x" $38)/(256*256.0)+ strtonum("0x" $39)/(256*256*256.0)+ strtonum("0x" $40)/(256256**256*256.0),
    strtonum("0x" $41 $42 $43 $44),
    strtonum("0x" $45)/256.0+ strtonum("0x" $45)/(256*256.0)+ strtonum("0x" $46)/(256*256*256.0)+ strtonum("0x" $48)/(256256**256*256.0);
    fflush()
  }
}'
