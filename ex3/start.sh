#!/bin/bash
export DISPLAY=:9
Xvfb :9 -shmem -screen 0 1366x768x16 &
cd /ex3
pybot -v URL:$URL myapp_tests
