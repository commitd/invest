#!/bin/bash
# Clone 
git clone -b ${1:master} git@github.com:commitd/invest-server.git
git clone -b ${1:master} git@github.com:commitd/invest-ui.git

# Install documentation too
./setup-documentation.sh

cd invest-server
./setup.sh
cd -

cd invest-ui
./setup.sh
cd -