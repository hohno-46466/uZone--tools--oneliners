#!/bin/sh

python-barcode create "4904230067023" testJAN -b jan --text "4 904230 067023" && convert testJAN.svg testJAN.png && ls -ltr testJAN.{svg,png}
