#Get ruby up and running

#give him sudo
execute "Install rvm" do
  command "curl -L https://get.rvm.io | bash -s stable --ruby"
  creates "/home/vagrant/.rvm/bin/rvm"
end

execute "Install Ruby 1.9.2" do
  command "/home/vagrant/.rvm/bin/rvm install 1.9.2"
end

execute "Install Ruby 1.9.3" do
  command "/home/vagrant/.rvm/bin/rvm install 1.9.3"
end

#install redline
execute "Install Redline" do
  command "/home/vagrant/.rvm/bin/rvm pkg install readline"
  creates "/usr/local/rvm/src/readline-5.2"
end

# Setup Environment
execute "Configure rails development environment" do
  command "echo 'export RAILS_ENV=development' >> ~/.bash_profile"
  not_if "if [ '$RAILS_ENV' == '#{node[:environment][:rails_env]}' ]; then true; else false; fi"
  action :run
end


