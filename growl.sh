#!/bin/sh

# Command line controll of growl app

# Check for MAC OSX
hash osascript 2>/dev/null && {

usage () {
cat <<EOF
usage: `basename $0` [pause|resume|help]
EOF
}

case $1 in
    pause)
        osascript -e 'tell app "Growl" to pause application'
        ;;
    resume)
        osascript -e 'tell app "Growl" to resume application'
        ;;
    *)
        usage
        ;;
esac

}
