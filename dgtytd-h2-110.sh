#! /bin/bash
#bash <(curl -s "https://dgvant.com/dgtytd.sh")
echo "============================================"
echo "==========START DGT YOUTUBE 2023============"
echo "============================================"
rm linux-x64-self.tar
wget http://update.dgvant.com/Ln/linux-x64-self.tar
tar -xvf linux-x64-self.tar -C /root
tar -zxf /root/linux-x64/browser/110.tar.gz -C /root/linux-x64/browser
mv /root/linux-x64/browser/orbita-browser /root/linux-x64/browser/110
rm api_config_h2.json
wget http://update.dgvant.com/Ln/api_config_h2.json
cp api_config_h2.json /root/linux-x64/api_config.json

#-------------



#/usr/bin/dotnet /root/linux-x64/LinuxTest.dll
sudo apt-get update
sudo apt install curl -y
sudo apt install cron -y
#---fix bug remote debug ---
echo "fixbug remote"
sudo apt-get install libnss3-dev -y

sudo apt-get install -y gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget libgbm1
#----------

cp /root/linux-x64/DgtYoutube.service /etc/systemd/system/DgtYoutube.service
systemctl daemon-reload
systemctl restart DgtYoutube
systemctl enable DgtYoutube
sudo journalctl --rotate
sudo journalctl --vacuum-time=1s
#sudo systemctl stop HelloWorld

#sudo systemctl status DgtYoutube
#sudo journalctl -u DgtYoutube
echo "check update"
bash /root/linux-x64/autoupdate.sh
echo "add autoupdate"
crontab -r
cat <(crontab -l) <(echo "25 * * * * /root/linux-x64/autoupdate.sh") | crontab -
echo "============================================"
echo "==================SUCCESS=================="
echo "============================================"
