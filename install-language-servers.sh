#!/usr/bin/env bash

npm install -g vscode-langservers-extracted \
@prisma/language-server \
typescript-language-server \
diagnostic-languageserver \
yaml-language-server \
bash-language-server \
@tailwindcss/language-server \
svelte-language-server \
intelephense \ # PHP Language Server - https://intelephense.com/faq.html - put license key in ~/intelephense/licence.txt
sql-language-server

# Install Lua Language Server
# https://github.com/LuaLS/lua-language-server
