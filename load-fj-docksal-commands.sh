#!/usr/bin/env bash

# Remote bash script for install in one command: load from git and execute:
# wget -O - https://raw.githubusercontent.com/fivejars/remote-docksal-config/INSTALL-SCRIPT/load-fj-docksal-commands.sh | bash

# Abort if anything fails
set -e

#--------------------------- Helper functions ----------------------------------

# Console colors
red='\033[0;31m'
green='\033[0;32m'
green_bg='\033[42m'
yellow='\033[1;33m'
NC='\033[0m'

echo-red () { echo -e "${red}$1${NC}"; }
echo-green () { echo -e "${green}$1${NC}"; }
echo-green-bg () { echo -e "${green_bg}$1${NC}"; }
echo-yellow () { echo -e "${yellow}$1${NC}"; }

#-------------------------- END: Helper functions ------------------------------

#------------------------------- Execution -------------------------------------

if [[ ! -d ~/.docksal ]]; then
  echo-red "Error: Docksal not found."
  exit 1
fi

if [[ -d ~/.docksal/commands/fj ]]; then
  echo-yellow "FJ docksal commands already exist, start commands update."
  cd ~/.docksal/commands/fj
  git pull
  echo-green-bg "Update completed."
  exit 1
fi

if [[ ! -d ~/.docksal/commands ]]; then
  mkdir ~/.docksal/commands
fi

cd ~/.docksal/commands
# Check that user has access to fivejars/fj-docksal-commands repository
echo-green "Check access to remote repository"
git ls-remote git@bitbucket.org:fivejars/fj-docksal-commands.git

# Clone commands to fj directory (Commands Group).
echo-green "Load commands from remote repository"
git clone git@bitbucket.org:fivejars/fj-docksal-commands.git fj

echo-green-bg "Installation completed!"

#----------------------------- END: Execution ----------------------------------
