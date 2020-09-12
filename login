#!/data/data/com.termux/files/usr/bin/sh
# Hacker bannner
# Password login
# execute login shell 
# exit from termux for incorrect password

echo 
echo 
echo 
echo "
      ━━━━━━━━━━━━━━━━━━━━━━━━━ [★] L O G I N [★] ━━━━━━━━━━━━━━━━━━━━━━━━━━━ " |lolcat
echo
echo " 
                 ██╗  ██╗ █████╗  █████╗ ██╗  ██╗███████╗██████╗
                 ██║  ██║██╔══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗
                 ███████║███████║██║  ╚═╝█████═╝ █████╗  ██████╔╝
                 ██╔══██║██╔══██║██║  ██╗██╔═██╗ ██╔══╝  ██╔══██╗
                 ██║  ██║██║  ██║╚█████╔╝██║ ╚██╗███████╗██║  ██║
                 ╚═╝  ╚═╝╚═╝  ╚═╝ ╚════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝  "|lolcat
echo
echo "
     ━━━━━━━━━━━━━━━━━━━━━━━━━ [★] W E L C O M E [★] ━━━━━━━━━━━━━━━━━━━━━━━━ " |lolcat
echo 
echo 

if [ $# = 0 ] && [ -f $PREFIX/etc/motd ] && [ ! -f ~/.hushlogin ]; then
	cat $PREFIX/etc/motd
fi

if [ -G ~/.termux/shell ]; then
	SHELL="`realpath ~/.termux/shell`"
else
	for file in $PREFIX/bin/bash $PREFIX/bin/sh /system/bin/sh; do
		if [ -x $file ]; then
			SHELL=$file
			break
		fi
	done
fi

if [ -f $PREFIX/lib/libtermux-exec.so ]; then
	export LD_PRELOAD=$PREFIX/lib/libtermux-exec.so
fi

#executing password login
exec $PREFIX/bin/login.py "$SHELL" -l "$@"

#setting this as default
#exec "$SHELL" -l "$@"

##############################
#           T-Remix          #
##############################
