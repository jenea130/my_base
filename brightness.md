#!/bin/bash

disp=$(xrandr | awk '/ connected/ {print $1}')
xrandr --output "$disp" --brightness 0.80

-----------------

