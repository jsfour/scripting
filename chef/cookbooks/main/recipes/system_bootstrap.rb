execute "Update package index" do
  command "apt-get update"
  action :run
end

package "curl"
package "git-core"
package "openssl"
package "build-essential"
package "libxml2"
package "libreadline6"
package "libreadline6-dev"
package "zlib1g"
package "zlib1g-dev"
package "libssl-dev"
package "libyaml-dev"
package "libsqlite3-dev"
package "sqlite3"
package "libxml2-dev"
package 'libxslt-dev'
package "autoconf"
package 'libc6-dev'
package 'libgdbm-dev'
package 'ncurses-dev'
package "automake"
package "libtool"
package "bison"
package "subversion"
package "pkg-config"
package "libffi-dev"
package "bash"
package "patch"
package "bzip2"