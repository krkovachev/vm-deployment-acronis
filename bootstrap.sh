# Create dest symbolic link
ln -sfn '/vagrant' '/vagrant2'
ln -sfn '/vagrant' '/vagrant3'
cp -a /vagrant2/. /vagrant/
cp -a /vagrant3/. /vagrant/
# Update Packages
#yum -y update

# Clean cached data
#yum clean all

#Install git
#yum install -y git
