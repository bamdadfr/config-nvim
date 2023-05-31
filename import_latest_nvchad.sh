#!/bin/bash

git clone git@github.com:nvchad/nvchad.git ~/git/nvchad --depth 1

rm init.lua
cp ~/git/nvchad/init.lua .

rm -rf lua/core
cp -r ~/git/nvchad/lua/core lua

rm -rf lua/plugins
cp -r ~/git/nvchad/lua/plugins lua

rm -rf ~/git/nvchad/
