#!/usr/bin/env bash
# Script to bootsrap the minum needed to get run the chef cookbooks

yes | sudo apt-get install ruby ruby-dev libopenssl-ruby rdoc ri irb build-essential wget ssl-cert git-core libreadline-devauso 
sudo gem update --system
sudo gem install chef ohai --no-ri --no-rdoc
cd ../chef/
chef-solo -c solo.rb