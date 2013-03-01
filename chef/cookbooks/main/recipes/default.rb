#Get ruby up and running

#give him sudo
execute "Install rvm" do
  user "vagrant"
  command "curl -L https://get.rvm.io | bash -s stable"
  creates "/home/vagrant/.rvm/scripts/rvm"
end

execute "Get RVM rolling" do
  user "vagrant"
  command "source ~/.rvm/scripts/rvm"
end

execute "Install Ruby 1.9.2" do
  user "vagrant"
  command "rvm install 1.9.2"
end

execute "Install Redline" do
  user "vagrant"
  command "rvm pkg install readline"
  creates "/usr/local/rvm/src/readline-5.2"
end

# Configure Rails Dev Stack --install rails with a bundle install command in rails folder
include_recipe "mysql::server"
include_recipe "mysql::ruby"
include_recipe "postgresql::server"
include_recipe "postgresql::client"
include_recipe "postgresql::ruby"

# Setup guard
# Install guard script
#set RVM global rvm gemset use global

# Setup Environment
execute "Configure rails development environment" do
  command "echo 'export RAILS_ENV=development' >> ~/.bashrc"
  not_if "if [ '$RAILS_ENV' == 'development' ]; then true; else false; fi"
  action :run
end


