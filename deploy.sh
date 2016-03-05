#!/bin/bash

# rust-china is an alias to rust-china.org server in $HOME/.ssh/config
server=rust-china
remote_path=/home/tennix/rust-china.org/public

echo "Generate site..."
hexo generate
echo "Sync site to remote machine..."
rsync -r public/ $server:$remote_path
