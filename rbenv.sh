sudo pacman -Syu --needed --noconfirm base-devel libffi libyaml openssl zlib

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

if ! rbenv versions | grep -q 2.4.1; then
  CONFIGURE_OPTS="--with-readline-dir=/usr/include/readline" rbenv install 2.4.1
  rbenv global 2.4.1
fi
