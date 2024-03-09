#!/bin/bash

pid=`cat endlessScript.pid`
kill $pid
echo "Zakończyłem proces $pid"
