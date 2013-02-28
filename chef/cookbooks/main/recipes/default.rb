# Install Packages
execute "update package index" do
  command "apt-get update"
  ignore_failure true
  action :nothing
end.run_action(:run)

package "git-core" do
  action :install
  options "--force-yes"
  provider Chef::Provider::Package::Apt
end

package "tar" do
  action :install
  provider Chef::Provider::Package::Apt
end

#include MYSQL ruby drivers

# Setup Environment
execute "Configure rails development environment" do
  command "echo 'export RAILS_ENV=development' >> ~/.bashrc"
  ignore_failure true
  action :nothing
end.run_action(:run)

#setup rails
#Setup guard