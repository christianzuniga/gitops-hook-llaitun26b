#!/bin/sh
echo "HOOK_OK_LAB_MARKER $(id -un) $(pwd)"
echo "--- flag:"
cat /flag.txt 2>&1
