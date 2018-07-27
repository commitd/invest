#!/bin/bash


echo "Cleaning old build"
rmdir -rf build/
mkdir build

echo "Building UI"
cd invest-ui
./build.sh
cd ..

echo "Copy main UI app into place"
mkdir -p invest-server/invest-plugins/invest-plugin-ui-app/src/main/resources/ui/app
rm -rf invest-server/invest-plugins/invest-plugin-ui-app/src/main/resources/ui/app/*
cp -a invest-ui/apps/invest-app/build/. invest-server/invest-plugins/invest-plugin-ui-app/src/main/resources/ui/app/.

echo "Copy UI plugins into place"
mkdir -p invest-server/invest-plugins/invest-plugin-ui-actiondev/src/main/resources/ui/dev-action/
rm -rf invest-server/invest-plugins/invest-plugin-ui-actiondev/src/main/resources/ui/dev-action/*
cp -a invest-ui/plugins/invest-plugin-actiondev/build/. invest-server/invest-plugins/invest-plugin-ui-actiondev/src/main/resources/ui/dev-action/.

echo "Copying invest.js library into place"
mkdir -p invest-server/invest-plugins/invest-plugin-ui-libs/src/main/resources/ui/libs
rm -rf invest-server/invest-plugins/invest-plugin-ui-libs/src/main/resources/ui/libs/invest.js
cp invest-ui/bundles/invest-js/build/invest.js invest-server/invest-plugins/invest-plugin-ui-libs/src/main/resources/ui/libs/invest.js

cd invest-server
./build.sh
cd -

./build-documentation.sh

echo "Collating to build directory"
cp -r invest-server/build/. build/.

