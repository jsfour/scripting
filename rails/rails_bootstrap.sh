# This script will setup everything required for a linux rails development system
#
#

#Get essentials up and running
sudo apt-get update
sudo apt-get install build-essential zlib1g-dev git-core sqlite3 libsqlite3-dev curl

#get chef running
curl -L https://get.rvm.io | bash -s stable --rails
rvm install 1.9.3
echo "Bootstrap Complete"

#install Postgresql
#install Mysql
#install RVM
#install Ruby Gems