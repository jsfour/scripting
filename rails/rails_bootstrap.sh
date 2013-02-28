# This script will setup everything required for a linux rails development system
#
#

sudo apt-get update
echo "Installing CURL" | sudo apt-get install curl
echo "Installing CURL" | sudo debconf-set-selections && sudo apt-get install chef -y
echo "Bootstrap Complete"

#get chef running
#install Postgresql
#install Mysql
#install RVM
#install Ruby Gems