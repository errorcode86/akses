#!/bin/bash

MYIP=$(wget -qO- ipinfo.io/ip);
echo "Sedang Mengecek Akses VPS"
IZIN=$( curl http://akses.jagoanneon-premium.com:81/akses | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "\e[0;32mAkses Di Izinkan...\e[0m"
else
echo -e "\033[41;37mVPS tidak diijinkan\e[0m";
echo "Kontak Admin Untuk Mendapatkan Akses Script"
echo "Facebook   : Generasi Ronggolawe Tuban"
echo "WhatsApp   : 087743253904"
exit 0
fi
sleep 3
clear
