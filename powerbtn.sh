#!/bin/sh
cmd=`echo "Shutdown\nRestart\nLogout\n||\nLock\nSuspend\nStandby" | dmenu`
case $cmd in
	Shutdown)
		sudo shutdown -h now
		;;
	Restart)
		sudo shutdown -r now
		;;
	Logout)
		i3-msg exit
		;;
	Lock)
		sudo -u m i3lock -c ff0000
		;;
	Suspend)
		sudo -u m i3lock -c ff0000 && sudo sh -c "echo mem > /sys/power/state"
		;;
    Standby)
        sudo -u m i3lock -c ff0000 && sudo sh -c "echo standby > /sys/power/state"
        ;;
esac
