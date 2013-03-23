#!/usr/bin/env bash

yes | sudo apt-get install ruby ruby-dev libopenssl-ruby rdoc ri irb build-essential wget ssl-cert git-core
sudo gem install chef ohai --no-ri --no-rdoc
cd ../chef/
chef-solo -c solo.rb