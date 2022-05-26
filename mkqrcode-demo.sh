#!/bin/sh
echo "import pyqrcode; qr = pyqrcode.QRCode('https://goo.gl/qcdnu4',error='H'); qr.png('testQR.png',scale=6)" | python3 && ls -l testQR.png
