# Installing OMI:
sudo wget -P /tmp/ https://github.com/Microsoft/omi/releases/download/v1.6.0/omi-1.6.0-0.ssl_100.ulinux.x64.rpm 
rpm -qa | grep -qw omi-1.6.0 || sudo rpm -Uvh /tmp/omi-1.6.0-0.ssl_100.ulinux.x64.rpm

# Installing DSC:
sudo wget -P /tmp/  https://github.com/Microsoft/PowerShell-DSC-for-Linux/releases/download/v1.1.1-294/dsc-1.1.1-294.ssl_098.x64.rpm
rpm -qa | grep -qw dsc-1.1.1 || sudo rpm -Uvh /tmp/dsc-1.1.1-294.ssl_098.x64.rpm
