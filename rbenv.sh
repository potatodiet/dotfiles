quiet_install libopenssl-devel http://download.opensuse.org/repositories/openSUSE:/Factory/standard/x86_64/readline-devel-6.3-86.2.x86_64.rpm

if [ ! -d ~/.rbenv ]; then
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
fi

if ! rbenv versions | grep -q 2.3.0; then
  CONFIGURE_OPTS="--with-readline-dir=/usr/include/readline" rbenv install 2.3.0
  rbenv global 2.3.0
fi
