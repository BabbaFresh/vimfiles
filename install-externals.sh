#!/usr/bin/env bash

# Language Servers

npm install -g \
@prisma/language-server \
@tailwindcss/language-server \
bash-language-server \
diagnostic-languageserver \
dockerfile-language-server-nodejs \
intelephense \
pyright \
sql-language-server \
svelte-language-server \
typescript-language-server \
vscode-langservers-extracted \
yaml-language-server

# PHP Language Server - https://intelephense.com/faq.html
# - put license key in ~/intelephense/licence.txt

# Install Lua Language Server
# https://github.com/LuaLS/lua-language-server

# Install Vale Markdown Linter
wget https://github.com/errata-ai/vale/releases/download/v3.6.1/vale_3.6.1_Linux_64-bit.tar.gz -O vale.tar.gz && \
  tar -xvf vale.tar.gz && \
  sudo mv vale /usr/local/bin && \
  rm vale.tar.gz

# Install Lua Linters
sudo luarocks install \
  luacheck
cargo install stylua

# Install Python Linters
pip install \
  black \
  isort \
  pylint

# Install Shellcheck
sudo apt install shellcheck
