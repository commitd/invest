
echo "Cleaning old build"
rmdir /s /q build/
mkdir build

echo "Build UI"

cd invest-ui
call build.sh
cd ..


echo "Copy main UI app into place"
mkdir invest-server\invest-plugins\invest-plugin-ui-app\src\main\resources\ui\app
rmdir /s /q invest-server\invest-plugins\invest-plugin-ui-app\src\main\resources\ui\app\*
robocopy /s /e invest-ui\apps\invest-app\build\. invest-server\invest-plugins\invest-plugin-ui-app\src\main\resources\ui\app\.

echo "Copy UI plugins into place"
mkdir invest-server\invest-plugins\invest-plugin-ui-actiondev\src\main\resources\ui\dev-action\
rmdir /s /q invest-server\invest-plugins\invest-plugin-ui-actiondev\src\main\resources\ui\dev-action\*
robocopy /s /e invest-ui\plugins\invest-plugin-actiondev\build\. invest-server\invest-plugins\invest-plugin-ui-actiondev\src\main\resources\ui\dev-action\.

echo "Copying invest.js library into place"
mkdir invest-server\invest-plugins\invest-plugin-ui-libs\src\main\resources\ui\libs
rmdir /s /q invest-server\invest-plugins\invest-plugin-ui-libs\src\main\resources\ui\libs\invest.js
copy invest-ui\bundles\invest-js\build\invest.js invest-server\invest-plugins\invest-plugin-ui-libs\src\main\resources\ui\libs\invest.js

cd invest-server
call build.sh
cd ..

call build-documentation.sh

echo "Collating to build directory"
robocopy /s /e invest-server\build\* build\.
robocopy /s /e invest-ui\build\* build\.

