# Install Packages
execute "Update package index" do
  command "apt-get update"
  action :run
end

package "curl"
package "git-core"
package "openssl"
package "build-essential"


#include MYSQL ruby drivers
include_recipe "mysql::server"
include_recipe "mysql::ruby"
include_recipe "postgresql::server"
include_recipe "postgresql::ruby"

execute "Install rvm" do
  command "curl -L https://get.rvm.io | bash -s stable --ruby"
  action :run
end

# Setup Environment
execute "Configure rails development environment" do
  command "echo 'export RAILS_ENV=development' >> ~/.bashrc"
  action :run
end

#setup rails
#Setup guard