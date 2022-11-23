#!/bin/sh

# unixTime2ISO8601time.sh

# Prev update: Thu Apr  9 06:34:13 JST 2020 by @hohno_at_kuimc
# Last updated: Thu Jul 15 22:50:15 JST 2021 by @hohno_at_kuikmc

# Public domain

gsed -e 's|\([1-2][0-9]\{9\}\)|(LANG=C; /bin/date -jr \1 +%Y-%m-%dT%H:%M:%S )  |' | sh
