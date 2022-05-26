#!/bin/sh
cat "$@" | nkf -w --url-input
