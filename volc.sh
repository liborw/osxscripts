#!/bin/sh

# OSX command line volume cotroler

hash osascript 2>/dev/null && {

usage() {
cat <<EOF
usage: `basename $0` [max,mute,0..100]
EOF
}

if [ $1 -eq $1 2> /dev/null ]; then
    osascript -e "set volume output volume $1"
else
case $1 in
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

}
