pacaur --noconfirm --needed -y rbenv ruby-build

if ! rbenv versions | grep -q 2.3.0; then
  CONFIGURE_OPTS="--with-readline-dir=/usr/include/readline" rbenv install 2.3.0
  rbenv global 2.3.0
fi
