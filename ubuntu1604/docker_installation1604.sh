# add the GPG key for the official Docker repository 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# update the package database 
sudo apt-get update
# Make sure you are about to install from the Docker repo 
# instead of the default Ubuntu 16.04 repo:
apt-cache policy docker-ce
# install Docker:
sudo apt-get install -y docker-ce
# Docker should now be installed, the daemon started, 
# and the process enabled to start on boot. 
# Check that it's running:
sudo systemctl status docker