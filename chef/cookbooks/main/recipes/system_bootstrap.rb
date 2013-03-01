execute "Update package index" do
  command "apt-get update"
  action :run
end

package "curl"
package "git-core"
package "openssl"
package "build-essential"
package "libxml2"