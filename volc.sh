#!/bin/bash

# OSX command line volume cotroler


usage() {
cat <<EOF
usage: `basename $0` [max,mute,0..100]
EOF
}


expr "$1 + 1" 2>/dev/null 1>/dev/null
if [ $? = 0 ]
then
    osascript -e "set volume output volume $1"
else
case "$1" in
    max)
        osascript -e 'set volume output volume 100'
        ;;
    mute)
        osascript -e 'set volume output volume 0'
        ;;
    *)
        usage
        ;;
esac
fi


