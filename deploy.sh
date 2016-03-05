#!/bin/bash

echo "Generate site..."
hexo generate
echo "Sync site to remote machine..."
rsync -r public/ rust-china:/home/tennix/rust-china.org/public/
