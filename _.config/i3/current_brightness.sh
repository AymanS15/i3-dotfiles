#!/bin/bash

# base dir for backlight class
basedir="/sys/class/backlight/"

# get the backlight handler
handler=$basedir$(ls $basedir)"/"

# get current brightness
old_brightness=$(cat $handler"brightness")

echo $old_brightness
