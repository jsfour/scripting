# Install Packages
execute "Update package index" do
  command "apt-get update"
  action :run
end

package "curl"
package "git-core"
package "openssl"
package "build-essential"


#Install databases
include_recipe "mysql::server"
include_recipe "mysql::ruby"
include_recipe "postgresql::server"
include_recipe "postgresql::client"
include_recipe "postgresql::ruby"

execute "Install rvm" do
  command "curl -L https://get.rvm.io | bash -s stable --ruby"
  action :run
end

# Setup rails 3.1
# Setup guard
# Install guard script

# Setup Environment
# This is not workig correctly.
execute "Configure rails development environment" do
  command "echo 'export RAILS_ENV=development' >> ~/.bashrc"
  action :run
end

execute "Configure rails development environment" do
  command "echo 'export RAILS_ENV=development' >> ~/.bashrc"
  action :run
end

