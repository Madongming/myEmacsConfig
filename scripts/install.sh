#!/bin/bash

# install go lsp
go install golang.org/x/tools/gopls@latest

# install js, ts lsp
yarn global add vscode-langservers-extracted
yarn global add typescript-language-server typescript

# install python lsp
pip3 install python-lsp-server

# install solidity lsp
yarn global add solidity-language-server
