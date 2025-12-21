RMDIR /S /Q %~dp0resources\nvDriver
MD %~dp0resources\nvDriver
RMDIR /S /Q %~dp0resources\Data\UserSpcf
MD %~dp0resources\Data\UserSpcf
set "extractFiles="
set /p extractFiles=<%~dp0extractConfig.txt
start %~dp0resources\7z\7za.exe x %1 -o%~dp0resources\nvDriver %extractFiles%
copy %~dp0resources\Data\setup.cfg %~dp0resources\nvDriver\