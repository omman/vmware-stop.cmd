@echo off
setlocal ENABLEEXTENSIONS
echo.
echo Stopping VMware
echo =====================================
echo Muhammad Omman
echo.
echo Set encoding parameters...
chcp 850

net session >NUL 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges required! 
    exit /b
)
echo.
echo Stopping VMware services...
net stop vmware-view-usbd > NUL 2>&1
net stop VMwareHostd > NUL 2>&1
net stop VMAuthdService > NUL 2>&1
net stop VMUSBArbService > NUL 2>&1
taskkill /F /IM vmware-tray.exe > NUL 2>&1

popd
echo.
echo Stop Done!