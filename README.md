# uZone--tools--oneliners

hohno's collection of one-liners

    ./uZone--tools--oneliners
     ├── NTPtime2unixTime.sh
     ├── README.md
     ├── dumpNTPpacket.sh
     ├── gamma-correction.sh
     ├── getNTPdata.sh
     ├── mkbarcode-demo.sh
     ├── mkqrcode-demo.sh
     ├── unixTime2ISO8601time.sh
     └── unixTime2humanReadableTime.sh
     
     0 directories, 9 files

* Example: 

    $ getNTPdata.sh | dumpNTPpacket.sh  | grep RecTime | awk '{print $3}' | NTPtime2unixTime.sh  | unixTime2humanReadableTime.sh 
      20210717-221813

