upgrade(){
yum install epel* -y
yum update -y
yum upgrade -y
wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
sudo rpm -Uvh remi-release-6*.rpm
rm -Rf remi-release-6*
yum update -y
yum upgrade -y
yum --enablerepo=remi,remi-php56 update
yum --enablerepo=remi,remi-php56 upgrade
}
