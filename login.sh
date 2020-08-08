#!/data/data/com.termux/files/usr/bin/bash
clear
cp login.py $PREFIX/bin/
chmod 700 $PREFIX/bin/login.py
cp login $PREFIX/bin/
chmod 700 $PREFIX/bin/login
mkdir /data/data/com.termux/files/usr/share/login/

#TODO: hide input
echo " "
echo " "
echo -e "\e[32m-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+- \e[m "
echo " "
echo -e "\e[34m[*]\e[m \e[33mplease wait \e[m"
sleep 3
echo -e "\e[34m[*]\e[m \e[33msetting up user input \e[m"
sleep 3
echo -e "\e[34m[*]\e[m \e[33mcreate a password \e[m"
sleep 2
echo -e "\e[34m[*]\e[m \e[33msave user input \e[m"
echo " "
sleep 3
echo -e "\e[32m-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+- \e[m "
echo " "                                                                         
echo -e  "\e[32mEnter password for login: \e[m"
read passone
echo -e "\e[32mRepeat password: \e[m "
read passtwo
sleep 3
echo " "
if [ $passone = $passtwo ];
then
	touch /data/data/com.termux/files/usr/share/login/.pass
	python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/share/login/.pass
echo "[*]Login succesfully installed"
elif [ $passone != $passtwo ];
then
	echo 'Password dont match'
fi
