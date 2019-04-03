
sudo yum -y install epel-release
sudo yum -y install nginx
sudo systemctl start nginx
sudo hostname >> /usr/share/nginx/html/baba.txt
