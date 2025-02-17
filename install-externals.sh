#!/usr/bin/env bash

# Language Servers

npm install -g \
@mistweaverco/kulala-ls \
@prisma/language-server \
@tailwindcss/language-server \
bash-language-server \
diagnostic-languageserver \
dockerfile-language-server-nodejs \
eslint \
intelephense \
pyright \
sql-language-server \
svelte-language-server \
typescript \
typescript-language-server \
vim-language-server \
vscode-langservers-extracted \
yaml-language-server

# PHP Language Server - https://intelephense.com/faq.html
# - put license key in ~/intelephense/licence.txt

# Install Lua Language Server
# https://github.com/LuaLS/lua-language-server

# Install Vale Markdown Linter
tmpdir=$(mktemp -d)
wget https://github.com/errata-ai/vale/releases/download/v3.6.1/vale_3.6.1_Linux_64-bit.tar.gz -O "$tmpdir/vale.tar.gz" && \
  tar -xvf "$tmpdir/vale.tar.gz" -C "$tmpdir" && \
  sudo mv "$tmpdir/vale" /usr/local/bin/vale && \
  rm -rf "$tmpdir"

# Install Lua Linters
sudo luarocks install \
  luacheck
cargo install stylua

# Install Python Linters
pip install \
  black \
  isort \
  pylint \
  pyright \
  pylsp-mypy # type checking

# Install Shellcheck
sudo apt install shellcheck
