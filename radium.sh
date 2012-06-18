#!/bin/sh

# Command line controll of radium app

# Check for MAC OSX
hash osascript 2>/dev/null && {

usage () {
cat <<EOF
usage: `basename $0` [play|stop|help]
EOF
}

case $1 in
    play)
        osascript -e 'tell app "Radium" to if not playing of player then playPause player'
        ;;
    stop)
        osascript -e 'tell app "Radium" to if playing of player then playPause player'
        ;;
    help)
        usage
        ;;
    *)  osascript -e 'tell app "Radium" to playPause player'
        ;;
esac

}
