#! /bin/sh
#
#
dep=`pacman -T 'bash' 'bc'|| ret=$?`
if [[ ! -e ret ]]; then
	for i in $dep;do
	echo "dependency check failed for:$i"
	done
else
	install -D -m755 unipkg.sh.in /usr/bin/unipkg
fi
	
