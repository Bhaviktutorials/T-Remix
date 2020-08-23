#!/data/data/com.termux/files/usr/bin/bash
clear
echo " "
echo " "
echo -e "\e[33mEnter Your Banner Name \e[32m \n\n"
read varbanner

echo " " 

echo "toilet -f slant '           $varbanner'  -F gay | lolcat" > t-ban.txt

echo -e "\e[33mEnter Your Terminal Name \e[32m  \n\n"
read varterm

echo " " 

echo "PS1='\[\e[1;34m
\a┌──\a─T─I─M─E─\a──┐\033[1;34m\a┌──\a─D─A─T─E─\a───>\033[1;34m
\a┌─[\033[1;93m \@\033[1;34m ]──[\033[1;93m \d\033[1;34m ]\033[1;34m
\a├─[\033[1;32m\w\033[1;34m]\033[1;34m
\[\e[34m\]└─>$varterm[~]:#\[\e[1;92m\] ' " > ash.txt 

cat "t-ban.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

cat "user.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

cat "ash.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

sleep 3



