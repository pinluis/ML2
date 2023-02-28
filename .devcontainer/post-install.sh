#!/bin/bash
set -ex

##
## Create some aliases
##
echo 'alias ll="ls -alF"' >> $HOME/.bashrc
echo 'alias la="ls -A"' >> $HOME/.bashrc
echo 'alias l="ls -CF"' >> $HOME/.bashrc

# Install pip-tools
pip install pip-tools

# Create requirements.txt from requirements.in
pip-compile

# Install requirements.txt
pip install -r requirements.txt

echo "Done!"
