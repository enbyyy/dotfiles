if command -v dbus-launch > /dev/null && test -z "${DBUS_SESSION_BUS_ADDRESS}" 
then 
 	eval $(dbus-launch --sh-syntax --exit-with-session)
fi

gentoo-pipewire-launcher &
~/.fehbg &
#xsetroot -solid #222222 &
sxhkd &
bar &
picom &
display_check &
exec dwm
