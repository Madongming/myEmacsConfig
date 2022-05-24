#!/bin/bash

# install go lsp
go install golang.org/x/tools/gopls@latest

# install js, ts lsp
npm i -g vscode-langservers-extracted
npm i -g typescript-language-server typescript

# install python lsp
pip3 install python-lsp-server
