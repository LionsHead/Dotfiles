#!/bin/bash


####

# postgres asdf
# fixing permissions on existing directory /Users/user/.asdf/installs/postgres/12.10/data ... ok
# creating subdirectories ... ok
# selecting dynamic shared memory implementation ... posix
# selecting default max_connections ... 100
# selecting default shared_buffers ... 128MB
# selecting default time zone ... Asia/Almaty
# creating configuration files ... ok
# running bootstrap script ... ok
# performing post-bootstrap initialization ... ok
# syncing data to disk ... ok

# initdb: warning: enabling "trust" authentication for local connections
# You can change this by editing pg_hba.conf or using the option -A, or
# --auth-local and --auth-host, the next time you run initdb.

# Success. You can now start the database server using:

#     /Users/user/.asdf/installs/postgres/12.10/bin/pg_ctl -D /Users/user/.asdf/installs/postgres/12.10/data -l logfile start
###

#####


plugins=(
  ruby
  erlang
  elixir
  nodejs
  golang
  rust
  postgres
)

link "asdf/.asdfrc"
link "asdf/.tool-versions"

brew install asdf

for plugin in "${plugins[@]}"
do
  if ! asdf plugin-list | grep $plugin > /dev/null
  then
      info "Installing ${plugin} asdf plugin"
      asdf plugin-add $plugin
  fi
done

info "Installed plugins"
asdf plugin list

if [[ $response_asdf_tools =~ (y|yes|Y) ]];then
  info "Install languages"
  asdf install
fi
