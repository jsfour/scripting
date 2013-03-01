#Get ruby up and running

#give him sudo
execute "Install rvm" do
  command "curl -L https://get.rvm.io | bash -s stable --rails"
  creates "/usr/local/rvm"
end
# Should I add : [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

group "rvm" do
  action :modify
  members ["vagrant"]
  append
end

execute "Install Ruby 1.9.2" do
  command "source /etc/profile.d/rvm.sh; rvm install 1.9.2"
end

execute "Install Redline" do
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


