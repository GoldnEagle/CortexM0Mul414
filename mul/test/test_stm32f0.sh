#!/bin/sh
DEVICE=/dev/ttyUSB0
DIR=`dirname $0`
STFLASH="$DIR/../../stlink-master/st-flash"

stty -F $DEVICE raw icanon eof \^d 9600
$STFLASH write $DIR/test.bin 0x8000000 &
cat < $DEVICE
#cat < $DEVICE 
