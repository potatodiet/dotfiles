sudo dnf install -y gcc bzip2 openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

if ! rbenv versions | grep -q 2.3.4; then
  CONFIGURE_OPTS="--with-readline-dir=/usr/include/readline" rbenv install 2.3.4
  rbenv global 2.3.4
fi
