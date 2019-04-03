
sudo yum -y install epel-release
sudo yum -y install nginx
sudo systemctl start nginx
sudo hostname >> /usr/shr/nginx/html/baba.txt
