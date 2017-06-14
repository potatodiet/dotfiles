#!/bin/bash

sudo pacman -Syu --noconfirm git

git config --global core.excludesfile ~/.gitignore_global

git config --global user.name "Justin Harrison"
git config --global user.email "me@justinharrison.ca"
git config --global user.signingkey DC500FDD
