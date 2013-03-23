sudo apt-get install sqlite3 libsqlite3-dev	
sudo apt-get install  sqlite3-ruby


# ruby developer packages
sudo apt-get install ruby1.8-dev ruby1.8 ri1.8 rdoc1.8 irb1.8
sudo apt-get install libreadline-ruby1.8 libruby1.8 libopenssl-ruby

# nokogiri requirements
sudo apt-get install libxslt-dev libxml2-dev
sudo gem install nokogiri

#confirm github connection
ssh -T git@github.com

#Setup
~/.ssh/config
Host github.com
  Hostname ssh.github.com
  Port 443
