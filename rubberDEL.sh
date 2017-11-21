#!/bin/bash
while x=0
do
clear
echo "$n"
echo "  _ _ _  _| |__| |__  ___ _ _|   \| __| |   "
echo " | '_| || | '_ \ '_ \/ -_) '_| |) | _|| |__ "
echo " |_|  \_,_|_.__/_.__/\___|_| |___/|___|____|"
echo "$n"
echo "                 BY: DeDogeGod              "
echo "                    v0.2b                   "
echo "--------------------------------------------"
echo "$n"
echo "$n"
echo "============================================"
echo "$n"
echo "(1) Delete inject.bin file"
echo "$n"
echo "(2) Copy You inject.bin file"
echo "$n"
echo "(3) Rename Your File In Computer"
echo "$n "
echo "(4) Rename Your File In Usb"
echo "$n"
echo "(e) EXIT"
echo "$n"
echo "============================================"
read -p "What will you do? >>" option
case "$option" in
	1)
	clear
	read -p "What is the name of your usb? >>" usb
	cd /media/$USER/$usb
	[ -f /media/$USER/$usb/inject.bin ] && echo "File found" || echo "Syntax error: File not found"
	rm -fv /media/$USER/$usb/inject.bin
	echo "Done"
	sleep 1
	;;
	2)
	clear
	read -p "What is the name of your usb? (Press Enter if you already did this for (1)) >>" usb
	read -p "Where is your file? (EX: Desktop/disfile) >>" locafile
	sleep 1
	[ -f /$USER/$locafile/inject.bin ] && echo "File Found" || echo "Syntax error: File not found"
	cp -v /$USER/$locafile/inject.bin /media/$USER/$usb/
	sleep 1
	echo "Done"
	[ -f /media/$USER/$usb/inject.bin ] && echo "Successful" || echo "Syntax error: Unsuccessful (Reason: File not found)"  
	sleep 1
	;;
	3)
	clear 
	read -p "Where is this file? (EX: Desktop/disfile) Press ENTER if you already did (2) and you entered the location >>" locafile
	sleep 1
	read -p "What is the current name (Don't add .bin) if the file you want to change. >>" namee
	[ -f /$USER/$locafile/$namee.bin ] && echo "File Found" || echo "Syntax error: File not found"
	sleep 2
	read -p "What is the new name (Don't add extensions) of the file you want? >>" newnamee
	sleep 1
	cd /$USER/$locafile/
	mv $namee.bin $newnamee.bin
	sleep 1
	echo "Done"
	sleep 1
	;;
	4)
	clear
	sleep 1 
	read -p "Where is this file located? (EX: foldername/folderinafoldername/)" locaatioon
	sleep 2
	read -p "What is the name of the file you want to change? Add extension." naamee
	read -p "What is the name of your usb? (Cap Sensitive)" usname
	sleep 3
	[ -f /media/$USER/$usname/$locaatioon/$naamee ] && echo "File Found" || echo "Syntax error: File Not Found"
	read -p "What is the new name of the file you want? Add extension." newname
	sleep 1
	cd /media/$USER/$usname/$locaatioon
	mv $naamee $newname
	echo "Done"
	sleep 1
	;;
	e)
	clear
	echo "Bye..."
	sleep 1
	exit
	x=1
	;;
	*)
	clear
	echo "Syntax error: Invaild option"
	sleep 2
	;;
esac
done
