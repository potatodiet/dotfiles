sh <(curl -sSf https://static.rust-lang.org/rustup.sh) --yes

# Rust autocomplete support in Vim
cd /usr/local
sudo git clone https://github.com/phildawes/racer.git
sudo chown justin:justin racer -R
cd racer; cargo build --release

cd /usr/local/src
sudo git clone https://github.com/rust-lang/rust.git
sudo chown justin:justin rust -R
