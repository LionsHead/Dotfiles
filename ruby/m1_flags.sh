#!/bin/bash

# # export ARCHFLAGS="-arch x86_64" m1 hello

# # fix ffi
# # brew install automake libffi pkg-config
# # export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
# # export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
# # gem install ffi -v '1.12.2' -- --with-cflags="-Wno-error=implicit-function-declaration"
# #### apple m1 cfg
# # asdf m1
export RUBY_CONFIGURE_OPTS="--with-zlib-dir=/opt/homebrew/opt/zlib --with-openssl-dir=/opt/homebrew/opt/openssl@1.1 --with-readline-dir=/opt/homebrew/opt/readline --with-libyaml-dir=/opt/homebrew/opt/libyaml"
export RUBY_CFLAGS="-Wno-error=implicit-function-declaration"
export CONFIGURE_OPTS="--build aarch64-apple-darwin21"
# # ffi m1
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib -L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include -I/opt/homebrew/opt/openssl@1.1/include"
# #
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/homebrew/opt/openssl@1.1/lib/pkgconfig
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/homebrew/opt/libffi/lib/pkgconfig

# make installing of Ruby versions 2.6.x or 2.7.x
## fix v2 - by https://stackoverflow.com/questions/69012676/install-older-ruby-versions-on-a-m1-macbook

# brew uninstall --ignore-dependencies readline
# brew uninstall --ignore-dependencies openssl
# brew uninstall --ignore-dependencies ruby-build
# rm -rf /opt/homebrew/etc/openssl@1.1
# brew install -s readline
# brew install -s openssl
# brew install -s ruby-build

# # fix env config
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export RUBY_CFLAGS="-Wno-error=implicit-function-declaration"

# export LDFLAGS="-L/opt/homebrew/opt/readline/lib:$LDFLAGS"
# export CPPFLAGS="-I/opt/homebrew/opt/readline/include:$CPPFLAGS"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/readline/lib/pkgconfig:$PKG_CONFIG_PATH"

export LDFLAGS="-L/opt/homebrew/opt/libffi/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig:$PKG_CONFIG_PATH"

export optflags="-Wno-error=implicit-function-declaration"

# # optional
# # export RUBY_CFLAGS="-w"
