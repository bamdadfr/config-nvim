#!/bin/bash

rm init.lua
cp ~/git/nvchad/init.lua .

rm -rf lua/core
cp -r ~/git/nvchad/lua/core lua

rm -rf lua/plugins
cp -r ~/git/nvchad/lua/plugins lua
