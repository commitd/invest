:: Clone 
git clone git@github.com:commitd/invest-server.git
git clone git@github.com:commitd/invest-ui.git

:: Install documentation too
call setup-documentation.bat

cd invest-server
call setup.bat
cd -

cd invest-ui
call setup.sh
cd -
