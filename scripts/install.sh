#!/bin/bash

# install go lsp
go install golang.org/x/tools/gopls@latest
go install github.com/cweill/gotests/...@latest

# install js, ts lsp
npm i -g vscode-langservers-extracted
npm i -g typescript-language-server typescript

# install python lsp
pip3 install python-lsp-server

# install solidity lsp
npm i -g solidity-language-server

# instrall rust lsp
brew install rust-analyzer
