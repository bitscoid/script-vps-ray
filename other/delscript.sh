NC='\e[0m'
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'

rm -rf /user >> /dev/null 2>&1
rm /usr/local/etc/xray/city >> /dev/null 2>&1
rm /usr/local/etc/xray/org >> /dev/null 2>&1
rm /usr/local/etc/xray/timezone >> /dev/null 2>&1
rm -rf /var/www/html/vmess >> /dev/null 2>&1
rm -rf /var/www/html/vless >> /dev/null 2>&1
rm -rf /var/www/html/trojan >> /dev/null 2>&1
rm -rf /var/www/html/ss >> /dev/null 2>&1
rm -rf /var/www/html/ss2022 >> /dev/null 2>&1
rm -rf /var/www/html/allxray >> /dev/null 2>&1
sudo systemctl stop nginx
sudo apt-get remove --purge nginx
sudo rm -rf /etc/nginx >> /dev/null 2>&1
sudo rm -rf /var/log/nginx >> /dev/null 2>&1
bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ remove --purge
rm -rf /var/log/xray >> /dev/null 2>&1
rm -rf /usr/local/etc/xray >> /dev/null 2>&1
rm -rf ~/.acme.sh >> /dev/null 2>&1
sudo apt-get autoremove
cd /usr/bin
rm -rf add-vmess
rm -rf del-vmess
rm -rf extend-vmess
rm -rf trialvmess
rm -rf cek-vmess
rm -rf add-vless
rm -rf del-vless
rm -rf extend-vless
rm -rf trialvless
rm -rf cek-vless
rm -rf add-trojan
rm -rf del-trojan
rm -rf extend-trojan
rm -rf trialtrojan
rm -rf cek-trojan
rm -rf add-ss
rm -rf del-ss
rm -rf extend-ss
rm -rf trialss
rm -rf cek-ss
rm -rf add-ss2022
rm -rf del-ss2022
rm -rf extend-ss2022
rm -rf trialss2022
rm -rf cek-ss2022
rm -rf add-xray
rm -rf del-xray
rm -rf extend-xray
rm -rf trialxray
rm -rf cek-xray
rm -rf log-create
rm -rf log-vmess
rm -rf log-vless
rm -rf log-trojan
rm -rf log-ss
rm -rf log-ss2022
rm -rf log-allxray
rm -rf menu
rm -rf vmess
rm -rf vless
rm -rf trojan
rm -rf shadowsocks
rm -rf ss2022
rm -rf allxray
rm -rf xp
rm -rf dns
rm -rf certxray
rm -rf about
rm -rf clear-log
rm -rf changer
rm -rf delscript
rm -rf rescript
cd
sudo sed -i '/0 0 \* \* \* \* root xp/d' /etc/crontab
sudo sed -i '/5\/5 \* \* \* \* root clear-log/d' /etc/crontab
sed -i '/\/root\/.acme.sh\/acme.sh.env/d' ~/.bashrc
cat > /root/.profile << END
if [ "$BASH" ]; then
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
fi
mesg n || true
END
chmod 644 /root/.profile
sudo rm -rf /tmp/*
sudo chmod 1777 /tmp
sudo apt --fix-broken install
sudo dpkg --configure -a
sudo apt update
sudo apt upgrade
sudo apt-get upgrade base-files libmm-glib0 modemmanager motd-news-config -y
apt autoremove -y
echo "${YB}Script Deleted${NC}"
sleep 3
reboot