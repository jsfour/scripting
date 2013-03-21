#!/bin/bash

echo "Downloading Git, updating the distro"
sudo apt-get install git-core
git clone git://github.com/jsmootiv/scripting.git
cd scripting/chef
sudo chef-solo -c solo.rb
echo "#### Enter postgresrootpassword into the below password prompt"
createdb --template=template0 --encoding=UTF-8 --locale=en_US.utf8 -h localhost -U postgres utf_template
echo "#### Logging You Out"
exit