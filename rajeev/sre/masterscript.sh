sudo yum -y install epel-release
sudo yum -y install nginx
sudo systemctl start nginx
sudo yum -y install python-pip
sudo yum -y install python-devel
sudo yum -y install gcc
sudo pip install psutil
wget -P ~/ https://raw.githubusercontent.com/rajeev-world/BigDataInfraAzure/master/rajeev/sre/machinemetrics.py
sudo chown -R babauser:babauser /usr/share/nginx/html
wget -P /usr/share/nginx/html/ https://raw.githubusercontent.com/rajeev-world/BigDataInfraAzure/master/rajeev/sre/track.txt
wget -P ~/ https://raw.githubusercontent.com/rajeev-world/BigDataInfraAzure/master/rajeev/sre/machinemetrics.py
(crontab -l 2>/dev/null; echo "* * * * * python ~/machinemetrics.py  >> /usr/share/nginx/html/track.txt && sed -ni '3{h; :a; n; \${p;x;bb}; H; ba}; :b; p' /usr/share/nginx/html/track.txt ") | crontab -
(crontab -l 2>/dev/null; echo "* * * * * wget -O /usr/share/nginx/html/track1.txt   http://babamachine1/track.txt") | crontab -
(crontab -l 2>/dev/null; echo "* * * * * wget -O /usr/share/nginx/html/track2.txt   http://babamachine2/track.txt") | crontab -
