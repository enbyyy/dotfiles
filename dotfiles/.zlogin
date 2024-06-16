while true; do
	if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
		startx
	fi
	sleep 0.1
done
