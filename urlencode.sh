#!/bin/sh
cat "$@" | nkf -w -MQ | tr '=' '%'
