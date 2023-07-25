#!/bin/bash

target_folder="/tmp/nvchad"

git clone git@github.com:nvchad/nvchad.git "$target_folder" --depth 1

rm init.lua
cp "$target_folder"/init.lua .

rm -rf lua/core
cp -r "$target_folder"/lua/core lua

rm -rf lua/plugins
cp -r "$target_folder"/lua/plugins lua

rm -rf "$target_folder"
