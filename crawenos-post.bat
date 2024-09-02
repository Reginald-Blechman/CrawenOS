:: Vojtass#0001 | discord.gg/crawenos
:: POST INSTALLATION SCRIPT
:: CrawenOS is a custom windows 10 based on 20H2 and 21H2

@echo off
TITLE CrawenOS POST-TWEAKS v0.6.0
SETLOCAL EnableDelayedExpansion

:: CALL CONFIG SECTION
call:CONFIG >nul 2>&1

:: RUN SCRIPT A IN FULLSCREEN MODE
CSCRIPT /nologo "%VBSFullScreen%"
taskkill /F /IM explorer.exe >nul 2>&1

:: MSGBOX INFO
call:MSGBOX "Please wait until your post-install script is done. Crawen is a free, custom windows leading to max performance. <discord.gg/crawenos>" vbOKOnly "Welcome to crawenOS"

:: INFO
call:ECHOX NOTE: DO NOT CLICK ANYTHING WITH MOUSE OR YOUR KEYBOARD!

:: INSTALL DIRECTX
call:ECHOX Installing DirectX...
call %SYSTEMROOT%\Crawen\DirectX\dxsetup.exe /silent

:: INSTALL VCREDIST
call:ECHOX Installing VCRedist...
call %SYSTEMROOT%\Crawen\vcredist.exe /aiV /gm2

:: INSTALL 7-ZIP
call:ECHOX Installing 7-Zip...
call %SYSTEMROOT%\Crawen\7zip.msi /quiet /norestart
rd /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip"

reg add "HKCU\Software\7-Zip\Options" /v "ContextMenu" /t REG_DWORD /d "2147488038" /f >nul 2>&1
reg add "HKCU\Software\7-Zip\Options" /v "ElimDupExtract" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Classes\.001" /ve /t REG_SZ /d "7-Zip.001" /f >nul 2>&1
reg add "HKLM\Software\Classes\.7z" /ve /t REG_SZ /d "7-Zip.7z" /f >nul 2>&1
reg add "HKLM\Software\Classes\.arj" /ve /t REG_SZ /d "7-Zip.arj" /f >nul 2>&1
reg add "HKLM\Software\Classes\.bz2" /ve /t REG_SZ /d "7-Zip.bz2" /f >nul 2>&1
reg add "HKLM\Software\Classes\.bzip2" /ve /t REG_SZ /d "7-Zip.bzip2" /f >nul 2>&1
reg add "HKLM\Software\Classes\.cab" /ve /t REG_SZ /d "7-Zip.cab" /f >nul 2>&1
reg add "HKLM\Software\Classes\.cpio" /ve /t REG_SZ /d "7-Zip.cpio" /f >nul 2>&1
reg add "HKLM\Software\Classes\.deb" /ve /t REG_SZ /d "7-Zip.deb" /f >nul 2>&1
reg add "HKLM\Software\Classes\.dmg" /ve /t REG_SZ /d "7-Zip.dmg" /f >nul 2>&1
reg add "HKLM\Software\Classes\.esd" /ve /t REG_SZ /d "7-Zip.esd" /f >nul 2>&1
reg add "HKLM\Software\Classes\.fat" /ve /t REG_SZ /d "7-Zip.fat" /f >nul 2>&1
reg add "HKLM\Software\Classes\.gz" /ve /t REG_SZ /d "7-Zip.gz" /f >nul 2>&1
reg add "HKLM\Software\Classes\.gzip" /ve /t REG_SZ /d "7-Zip.gzip" /f >nul 2>&1
reg add "HKLM\Software\Classes\.hfs" /ve /t REG_SZ /d "7-Zip.hfs" /f >nul 2>&1
reg add "HKLM\Software\Classes\.iso" /ve /t REG_SZ /d "7-Zip.iso" /f >nul 2>&1
reg add "HKLM\Software\Classes\.lha" /ve /t REG_SZ /d "7-Zip.lha" /f >nul 2>&1
reg add "HKLM\Software\Classes\.lzh" /ve /t REG_SZ /d "7-Zip.lzh" /f >nul 2>&1
reg add "HKLM\Software\Classes\.lzma" /ve /t REG_SZ /d "7-Zip.lzma" /f >nul 2>&1
reg add "HKLM\Software\Classes\.ntfs" /ve /t REG_SZ /d "7-Zip.ntfs" /f >nul 2>&1
reg add "HKLM\Software\Classes\.rar" /ve /t REG_SZ /d "7-Zip.rar" /f >nul 2>&1
reg add "HKLM\Software\Classes\.rpm" /ve /t REG_SZ /d "7-Zip.rpm" /f >nul 2>&1
reg add "HKLM\Software\Classes\.squashfs" /ve /t REG_SZ /d "7-Zip.squashfs" /f >nul 2>&1
reg add "HKLM\Software\Classes\.swm" /ve /t REG_SZ /d "7-Zip.swm" /f >nul 2>&1
reg add "HKLM\Software\Classes\.tar" /ve /t REG_SZ /d "7-Zip.tar" /f >nul 2>&1
reg add "HKLM\Software\Classes\.taz" /ve /t REG_SZ /d "7-Zip.taz" /f >nul 2>&1
reg add "HKLM\Software\Classes\.tbz" /ve /t REG_SZ /d "7-Zip.tbz" /f >nul 2>&1
reg add "HKLM\Software\Classes\.tbz2" /ve /t REG_SZ /d "7-Zip.tbz2" /f >nul 2>&1
reg add "HKLM\Software\Classes\.tgz" /ve /t REG_SZ /d "7-Zip.tgz" /f >nul 2>&1
reg add "HKLM\Software\Classes\.tpz" /ve /t REG_SZ /d "7-Zip.tpz" /f >nul 2>&1
reg add "HKLM\Software\Classes\.txz" /ve /t REG_SZ /d "7-Zip.txz" /f >nul 2>&1
reg add "HKLM\Software\Classes\.vhd" /ve /t REG_SZ /d "7-Zip.vhd" /f >nul 2>&1
reg add "HKLM\Software\Classes\.wim" /ve /t REG_SZ /d "7-Zip.wim" /f >nul 2>&1
reg add "HKLM\Software\Classes\.xar" /ve /t REG_SZ /d "7-Zip.xar" /f >nul 2>&1
reg add "HKLM\Software\Classes\.xz" /ve /t REG_SZ /d "7-Zip.xz" /f >nul 2>&1
reg add "HKLM\Software\Classes\.z" /ve /t REG_SZ /d "7-Zip.z" /f >nul 2>&1
reg add "HKLM\Software\Classes\.zip" /ve /t REG_SZ /d "7-Zip.zip" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.001" /ve /t REG_SZ /d "001 Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.001\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,9" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.001\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.001\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.001\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.7z" /ve /t REG_SZ /d "7z Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.7z\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,0" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.7z\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.7z\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.7z\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.arj" /ve /t REG_SZ /d "arj Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.arj\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,4" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.arj\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.arj\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.arj\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.bz2" /ve /t REG_SZ /d "bz2 Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.bz2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.bz2\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.bz2\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.bz2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.bzip2" /ve /t REG_SZ /d "bzip2 Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.bzip2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.bzip2\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.bzip2\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.bzip2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.cab" /ve /t REG_SZ /d "cab Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.cab\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,7" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.cab\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.cab\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.cab\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.cpio" /ve /t REG_SZ /d "cpio Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.cpio\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,12" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.cpio\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.cpio\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.cpio\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.deb" /ve /t REG_SZ /d "deb Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.deb\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,11" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.deb\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.deb\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.deb\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.dmg" /ve /t REG_SZ /d "dmg Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.dmg\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,17" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.dmg\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.dmg\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.dmg\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.esd" /ve /t REG_SZ /d "esd Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.esd\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,0" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.esd\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.esd\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.esd\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.fat" /ve /t REG_SZ /d "fat Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.fat\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,21" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.fat\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.fat\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.fat\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.gz" /ve /t REG_SZ /d "gz Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.gz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.gz\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.gz\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.gz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.gzip" /ve /t REG_SZ /d "gzip Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.gzip\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.gzip\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.gzip\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.gzip\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.hfs" /ve /t REG_SZ /d "hfs Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.hfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,18" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.hfs\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.hfs\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.hfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.iso" /ve /t REG_SZ /d "iso Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.iso\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,8" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.iso\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.iso\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.iso\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lha" /ve /t REG_SZ /d "lha Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lha\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,6" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lha\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lha\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lha\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lzh" /ve /t REG_SZ /d "lzh Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lzh\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,6" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lzh\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lzh\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lzh\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lzma" /ve /t REG_SZ /d "lzma Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lzma\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,16" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lzma\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lzma\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.lzma\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.ntfs" /ve /t REG_SZ /d "ntfs Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.ntfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,22" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.ntfs\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.ntfs\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.ntfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.rar" /ve /t REG_SZ /d "rar Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.rar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,3" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.rar\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.rar\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.rar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.rpm" /ve /t REG_SZ /d "rpm Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.rpm\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,10" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.rpm\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.rpm\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.rpm\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.squashfs" /ve /t REG_SZ /d "squashfs Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.squashfs\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,24" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.squashfs\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.squashfs\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.squashfs\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.swm" /ve /t REG_SZ /d "swm Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.swm\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,15" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.swm\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.swm\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.swm\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tar" /ve /t REG_SZ /d "tar Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,13" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tar\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tar\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.taz" /ve /t REG_SZ /d "taz Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.taz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,5" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.taz\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.taz\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.taz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tbz" /ve /t REG_SZ /d "tbz Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tbz2" /ve /t REG_SZ /d "tbz2 Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tbz2\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tbz2\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tbz2\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tbz2\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tbz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,2" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tbz\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tbz\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tbz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tgz" /ve /t REG_SZ /d "tgz Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tgz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tgz\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tgz\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tgz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tpz" /ve /t REG_SZ /d "tpz Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tpz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,14" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tpz\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tpz\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.tpz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.txz" /ve /t REG_SZ /d "txz Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.txz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,23" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.txz\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.txz\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.txz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.vhd" /ve /t REG_SZ /d "vhd Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.vhd\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,20" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.vhd\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.vhd\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.vhd\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.wim" /ve /t REG_SZ /d "wim Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.wim\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,15" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.wim\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.wim\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.wim\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.xar" /ve /t REG_SZ /d "xar Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.xar\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,19" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.xar\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.xar\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.xar\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.xz" /ve /t REG_SZ /d "xz Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.xz\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,23" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.xz\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.xz\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.xz\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.z" /ve /t REG_SZ /d "z Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.z\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,5" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.z\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.z\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.z\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.zip" /ve /t REG_SZ /d "zip Archive" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.zip\DefaultIcon" /ve /t REG_SZ /d "C:\Program Files\7-Zip\7z.dll,1" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.zip\shell" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.zip\shell\open" /ve /t REG_SZ /d "" /f >nul 2>&1
reg add "HKLM\Software\Classes\7-Zip.zip\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\7-Zip\7zFM.exe\" \"%%1\"" /f >nul 2>&1

:: DISABLE DMA REMAPPING
call:ECHOX Disable DMA Remmaping...
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\DmaGuard\DeviceEnumerationPolicy" /v "value" /t REG_DWORD /d "2" /f >nul 2>&1
for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f DmaRemappingCompatible ^| find /i "Services\" ') do (
  reg add "%%i" /v "DmaRemappingCompatible" /t REG_DWORD /d "0" /f >nul 2>&1
)

:: DISABLE FTH
call:ECHOX Disable FTH...
reg add "HKLM\Software\Microsoft\FTH" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1

:: Disable Meltdown and Spectre
call:ECHOX Disable Meltdown and Spectre...
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d "0" /f >nul 2>&1

:: HiveNightmare Mitigations
call:ECHOX Mitigate against SeriousSAM...
icacls %windir%\system32\config\*.* /inheritance:e >nul 2>&1

:: OPTIMIZE PROCESSES CYCLES
call:ECHOX Optimize Processes Cycles...
copy /y "%windir%\System32\svchost.exe" "%windir%\System32\audiosvchost.exe" >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Audiosrv" /v "ImagePath" /t REG_EXPAND_SZ /d "%windir%\System32\audiosvchost.exe -k LocalServiceNetworkRestricted -p" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AudioEndpointBuilder" /v "ImagePath" /t REG_EXPAND_SZ /d "%windir%\System32\audiosvchost.exe -k LocalSystemNetworkRestricted -p" /f >nul 2>&1
for /f "tokens=*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options"') do reg delete "%%i" /f >nul 2>&1

:: SET PROCESSES PRORITIES
:: SET SYSTEM PROCESSES PRIORITY BELOW NORMAL
call:ECHOX Set System processes priority below normal...
for %%i in (lsass sppsvc SearchIndexer fontdrvhost sihost ctfmon) do (
  reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "5" /f >nul 2>&1
)

:: SET BACKGROUND APPS PRIORITY BELOW NORMAL
call:ECHOX Set Background Apps processes priority below normal...
for %%i in (OriginWebHelperService ShareX EpicWebHelper UplayWebCore SocialClubHelper steamwebhelper) do (
  reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%i.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "5" /f >nul 2>&1
)

:: WINLOGON TO NORMAL PRIORITY
call:ECHOX Set WinLogon to normal prority...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "2" /f >nul 2>&1

:: CSRSS TO HIGH PRIORITY
call:ECHOX Set CSRSS to normal prority...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >nul 2>&1

:: DISABLE PROCESS MITIGATIONS
:: https://docs.microsoft.com/en-us/powershell/module/processmitigations/set-processmitigation?view=windowsserver2019-ps
call:ECHOX Disable Process Mitigations...
call:POWERSHELL "Set-ProcessMitigation -System -Disable CFG"
for /f "tokens=3 skip=2" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions"') do set mitigation_mask=%%a
for /L %%a in (0,1,9) do (
    set "mitigation_mask=!mitigation_mask:%%a=2!
)

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "!mitigation_mask!" /f >>nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "!mitigation_mask!" /f >nul 2>&1

for %%a in (fontdrvhost dwm lsass svchost WmiPrvSE winlogon csrss audiodg ntoskrnl services) do (
  reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%a.exe" /v "MitigationOptions" /t REG_BINARY /d "!mitigation_mask!" /f >nul 2>&1
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%a.exe" /v "MitigationAuditOptions" /t REG_BINARY /d "!mitigation_mask!" /f >nul 2>&1
)

:: DISABLE WIFI IF NEEDED
if !ETHERNET!==1 (
	if !LAPTOP!==0 (
    call:ECHOX Disable WIFI...
    sc config WlanSvc start=disabled >nul 2>&1
    sc config vwififlt start=demand >nul 2>&1s
	)
)

:: DISABLE BLUETOOTH
call:ECHOX Disabling Bluetooth...
devcon disable "=Bluetooth" >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
sc config BluetoothUserService start=disabled >nul 2>&1
sc config BTAGService start=disabled >nul 2>&1
sc config BthAvctpSvc start=disabled >nul 2>&1
sc config bthserv start=disabled >nul 2>&1

:: SYSTEM AND VPN DEVICES
:: https://www.nirsoft.net/utils/device_manager_view.html
call:ECHOX Disabling System and VPN devices...
DevManView.exe /disable "AMD PSP"
DevManView.exe /disable "Composite Bus Enumerator"
DevManView.exe /disable "High Precision Event Timer"
DevManView.exe /disable "Intel Management Engine"
DevManView.exe /disable "Intel SMBus"
DevManView.exe /disable "Microsoft Kernel Debug Network Adapter"
DevManView.exe /disable "Microsoft RRAS Root Enumerator"
DevManView.exe /disable "NDIS Virtual Network Adapter Enumerator"
DevManView.exe /disable "Numeric Data Processor"
DevManView.exe /disable "PCI Encryption/Decryption Controller"
DevManView.exe /disable "PCI Memory Controller"
DevManView.exe /disable "PCI standard RAM Controller"
DevManView.exe /disable "SM Bus Controller"
DevManView.exe /disable "System Timer"
DevManView.exe /disable "UMBus Root Bus Enumerator"
DevManView.exe /disable "Unknown Device"
DevManView.exe /disable "WAN Miniport (IKEv2)"
DevManView.exe /disable "WAN Miniport (IP)"
DevManView.exe /disable "WAN Miniport (IPv6)"
DevManView.exe /disable "WAN Miniport (L2TP)"
DevManView.exe /disable "WAN Miniport (Network Monitor)"
DevManView.exe /disable "WAN Miniport (PPPOE)"
DevManView.exe /disable "WAN Miniport (PPTP)"
DevManView.exe /disable "WAN Miniport (SSTP)"

:: CLEAN NON PRESENT DEVICES
call:ECHOX Cleaning non-present devices...
call:POWERSHELL "$Devices = Get-PnpDevice | ? Status -eq Unknown;foreach ($Device in $Devices) { &\"pnputil\" /remove-device $Device.InstanceId }"

:: DISABLE OTHER Devices
call:ECHOX Disable Printer and CDROM...
devcon disable "=CDROM" >nul 2>&1
devcon disable "=Printer" >nul 2>&1
devcon disable "=PrintQueue" >nul 2>&1
devcon disable ACPI\HP* >nul 2>&1
devcon disable ACPI\MSFT01* >nul 2>&1

:: ENABLE MSI MODE FOR PCI DEVICES
:: SET DEVICES PRIORITY TO UNDEFINED
call:ECHOX Setting MSI Mode priorites as undefined...
for /f "tokens=*" %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum\PCI"^| findstr "HKEY"') do (
  for /f "tokens=*" %%a in ('reg query "%%i"^| findstr "HKEY"') do reg delete "%%a\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /f >nul 2>&1
)

call:ECHOX Enabling MSI Mode...
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
for /f %%i in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1
for /f %%i in ('wmic path Win32_NetworkAdapter get PNPDeviceID^| findstr /l "PCI\VEN_"') do reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >nul 2>&1

:: DISABLE HPET AND SYNTHETIC TIMER
call:ECHOX Disabling HPET and Synthethic Timer...
call:POWERSHELL "Get-PnpDevice | Where-Object { $_.InstanceId -like 'ACPI\PNP0103\2&daba3ff&*' } | Disable-PnpDevice -Confirm:$false"
bcdedit /deletevalue useplatformclock >nul 2>&1
bcdedit /set disabledynamictick yes >nul 2>&1
bcdedit /set useplatformtick yes >nul 2>&1

:: DUAL BOOT OPTIONS
call:ECHOX Set up Dual Boot options...
bcdedit /set {current} description "Crawen" >nul 2>&1
bcdedit /set bootmenupolicy Legacy >nul 2>&1

:: DISABLE DEP / NX
for /f "delims=" %%a in ('ver') do ( set "BUILD=%%a" )
if "%BUILD%"=="Microsoft Windows [Version 10.0.19042.631]" (
call:ECHOX Disable DEP / NX...
bcdedit /set nx AlwaysOff >nul 2>&1
) else (
bcdedit /set nx OptIn >nul 2>&1
)

:: DISABLE LAST ACCESS
call:ECHOX Disabling Last Access...
fsutil behavior set disableLastAccess 1

:: DISABLE 8dot3
call:ECHOX Disabling 8dot3...
fsutil behavior set disable8dot3 1

:: DISABLE NTFS COMPRESSION
call:ECHOX Disabling NTFS Compression...
fsutil behavior set disablecompression 1

:: MEMORY CACHE SIZE AND MFT SPACE
call:ECHOX Set MEMORY CACHE SIZE AND MTF SPACE...
if !TOTAL_MEMORY! LSS 8000000 (
	fsutil behavior set memoryusage 1
	fsutil behavior set mftzone 1
) >nul 2>&1 else if !TOTAL_MEMORY! LSS 16000000 (
	fsutil behavior set memoryusage 1
	fsutil behavior set mftzone 2
) >nul 2>&1 else (
	fsutil behavior set memoryusage 2
	fsutil behavior set mftzone 2
) >nul 2>&1

:: DEVICE OPTIMIZATIONS
call:ECHOX Optimize DEVICE...
if !LAPTOP!==0 (
    :: IMPORT AND SET POWERPLAN
    call:ECHOX Import and set crawenOS powerplan...
    powercfg -import "%SYSTEMROOT%\Crawen\crawenOS.pow" 11111111-1111-1111-1111-111111111111 >nul 2>&1
    powercfg /s 11111111-1111-1111-1111-111111111111 >nul 2>&1

    :: DISABLE STOCK POWERPLANS
    call:ECHOX Delete stocks powerplans...
    powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a >nul 2>&1
    powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
    powercfg -delete e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1

	:: DISABLE POWER SETTINGS
  call:ECHOX Disable Power settings...
	reg add "HKLM\System\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\System\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f >nul 2>&1
  reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
) else (
	powercfg /s 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1
)

:: DISABLE USB AND DEVICES POWER SAVINGS
call:ECHOX Disable USB and Devices powesavings...
powershell -NoProfile -Command "$devices = Get-WmiObject Win32_PnPEntity; $powerMgmt = Get-WmiObject MSPower_DeviceEnable -Namespace root\wmi; foreach ($p in $powerMgmt){$IN = $p.InstanceName.ToUpper(); foreach ($h in $devices){$PNPDI = $h.PNPDeviceID; if ($IN -like \"*$PNPDI*\"){$p.enable = $False; $p.psbase.put()}}}" >nul 2>&1
for %%i in (EnhancedPowerManagementEnabled AllowIdleIrpInD3 EnableSelectiveSuspend DeviceSelectiveSuspended
    SelectiveSuspendEnabled SelectiveSuspendOn EnumerationRetryCount ExtPropDescSemaphore WaitWakeEnabled
    D3ColdSupported WdfDirectedPowerTransitionEnable EnableIdlePowerManagement IdleInWorkingState) do (
        for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "%%i"^| findstr "HKEY"') do (
            reg add "%%a" /v "%%i" /t REG_DWORD /d "0" /f >nul 2>&1
        )
    )

:: DISABLE DRIVE POWER SAVINGS
call:ECHOX Disable Drive powersavings...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Storage" /v "StorageD3InModernStandby" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pci\Parameters" /v "ASPMOptOut" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stornvme\Parameters\Device" /v "IdlePowerMode" /t REG_DWORD /d "0" /f >nul 2>&1

for /f "tokens=*" %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "StorPort"^| findstr "StorPort"') do reg add "%%i" /v "EnableIdlePowerManagement" /t REG_DWORD /d "0" /f >nul 2>&1
for /f "eol=E" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /s /f "EnableHIPM"^| findstr /v "EnableHIPM"') do (
  reg add "%%a" /f /v "EnableHIPM" /t REG_DWORD /d 0 >nul 2>&1
  reg add "%%a" /f /v "EnableDIPM" /t REG_DWORD /d 0 >nul 2>&1
  reg add "%%a" /f /v "EnableHDDParking" /t REG_DWORD /d 0 >nul 2>&1
)

:: DISABLE PREFETCH, SUPERFETCH, BOOTTRACE (FOR SSD)
call:ECHOX Disable Prefetch, Superfetch, Bootrace...
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "SfTrackingState" /t REG_DWORD /d "0" /f >nul 2>&1

:: SET SVCTRESHOLD
:: https://docs.microsoft.com/en-us/windows/application-management/svchost-service-refactoring
call:ECHOX Set SVCTRESHOLD...
reg add "HKLM\System\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "!SVCHOST!" /f >nul 2>&1

:: SET PROCESS SCHEDULING
call:ECHOX Process scheduling
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f >nul 2>&1

:: SPEEDUP STARTUP
call:ECHOX Speedup startup...
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DelayedDesktopSwitchTimeout" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d "0" /f >nul 2>&1

:: DISABLE RANDOM DRIVER VERIFICATION
call:ECHOX Disable Random driver verification...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\memory management" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f >nul 2>&1

:: DISABLE PAGECOMBINING and MEMORY COMPRESSION
call:ECHOX Disable PageCombining and MemoryCompression...
powershell -command Disable-MMAgent -PageCombining
powershell -command Disable-MMAgent -MemoryCompression

:: MMCSS
call:ECHOX Optimize MMCSS...
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "10" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "10" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "LazyModeTimeout" /t REG_DWORD /d "10000" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "NoLazyMode" /t REG_DWORD /d "1" /f >nul 2>&1

:: GAMEBAR / FSO
call:ECHOX Disable GameBar abd FSO...
reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "GamePanelStartupTipIndex" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_EFSEFeatureFlags" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_DSEBehavior" /t REG_DWORD /d "2" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "__COMPAT_LAYER" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /f >nul 2>&1
reg delete "HKCU\System\GameConfigStore\Children" /f >nul 2>&1
reg delete "HKCU\System\GameConfigStore\Parents" /f >nul 2>&1

:: DISABLE SCHEDULED TASKS
call:ECHOX Disable Scheduled Tasks...
schtasks /change /disable /TN "\Microsoft\Windows\AppID\EDP Policy Manager" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\AppID\PolicyConverter" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\AppID\VerifiedPublisherCertStoreCheck" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Application Experience\PcaPatchDbTask" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Application Experience\StartupAppTask" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\ApplicationData\appuriverifierdaily" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\ApplicationData\appuriverifierinstall" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\ApplicationData\DsSvcCleanup" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\BrokerInfrastructure\BgTaskregistrationMaintenanceTask" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\CertificateServicesClient\AikCertEnrollTask" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\CertificateServicesClient\KeyPregenTask" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Clip\License Validation" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Defrag\ScheduledDefrag" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\HandleCommand" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\HandleWnsCommand" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\IntegrityCheck" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\LocateCommandUserSession" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\registerDeviceAccountChange" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\registerDeviceLocationRightsChange" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\registerDevicePeriodic24" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\registerDevicePolicyChange" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\registerDeviceProtectionStateChanged" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\registerDeviceSettingChange" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DeviceDirectoryClient\registerUserDevice" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Diagnosis\Scheduled" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\DiskFootprint\Diagnostics" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\InstallService\ScanForUpdates" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\InstallService\ScanForUpdatesAsUser" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\InstallService\SmartRetry" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Management\Provisioning\Cellular" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\MemoryDiagnostic\ProcessMemoryDiagnosticEvents" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\MemoryDiagnostic\RunFullMemoryDiagnostic" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\MUI\LPRemove" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\StateRepository\MaintenanceTasks" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Subscription\EnableLicenseAcquisition" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Subscription\LicenseAcquisition" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Sysmain\ResPriStaticDbSync" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Sysmain\WsSwapAssessmentTask" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Time Zone\SynchronizeTimeZone" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\USB\Usb-Notifications" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Wininet\CacheTask" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\XblGameSave\XblGameSaveTask" >nul 2>&1
schtasks /change /disable /TN "\Microsoft\Windows\Device Setup\Metadata Refresh" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\PLA\System" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\PLA" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\RetailDemo\CleanupOfflineContent" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\RetailDemo" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\SyncCenter" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\TaskScheduler" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\Windows Activation Technologies" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\UpdateOrchestrator" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\WindowsUpdate\Scheduled Start" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\WindowsUpdate" >nul 2>&1
schtasks /delete /f /tn "\Microsoft\Windows\WaaSMedic" >nul 2>&1

:: DISABLE SERVICES AND DRIVERS
call:ECHOX Disable Services and Drivers...
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Dhcp" /v "DependOnService" /t REG_MULTI_SZ /d "NSI\0Afd" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Dnscache" /v "DependOnService" /t REG_MULTI_SZ /d "nsi" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\rdyboost" /v "DependOnService" /t REG_MULTI_SZ /d "" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ  /d "" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "UpperFilters" /t REG_MULTI_SZ  /d "" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\3ware" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\ADP80XX" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\AmdK8" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\AppIDSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\AppVClient" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\AppXSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\arcsas" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\AsyncMac" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\Beep" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\bindflt" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\buttonconverter" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\CAD" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\cbdhsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\cdfs" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\CimFS" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\circlass" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\cnghwassist" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\CompositeBus" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\CryptSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\defragsvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\Dfsc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\DispBrokerDesktopSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\DisplayEnhancementService" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\DsmSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\Eaphost" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\edgeupdatem" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\EFS" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\ErrDev" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\fdc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\fdPHost" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\FDResPub" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\flpydisk" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\fvevol" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\IKEEXT" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\InstallService" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\KSecPkg" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\KtmRm" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\mrxsmb" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\mrxsmb" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\mrxsmb20" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\mrxsmb20" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\MSDTC" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\NdisVirtualBus" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\nvraid" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\PEAUTH" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\QWAVEdrv" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\RasMan" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\rdbss" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\rdyboost" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\sfloppy" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\SharedAccess" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\SiSRaid2" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\SiSRaid4" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\SmsRouter" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\`Spooler`" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\sppsvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\srv2" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\SSDPSRV" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\SstpSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\Tcpip6" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\tcpipreg" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\Telemetry" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\udfs" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\umbus" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\VerifierExt" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\vsmraid" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\VSTXRAID" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WarpJITSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\wcnfs" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WindowsTrustedRTProxy" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WPDBusEnum" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1

:: --- INTERNET ---

:: DISABLE NAGLE'S ALGORITHM
call:ECHOX Disable Nagle's Algorithm...
for /f %%i in ('wmic path win32_networkadapter get GUID ^| findstr "{"') do (
  reg add "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%i" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f >nul 2>&1
  reg add "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%i" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f >nul 2>&1
  reg add "HKLM\System\CurrentControlSet\services\Tcpip\Parameters\Interfaces\%%i" /v "TCPNoDelay" /t REG_DWORD /d "1" /f >nul 2>&1
)

:: QOS
call:ECHOX Optimize QOS Settings...
reg add "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "TimerResolution" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\System\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "0" /f >nul 2>&1

:: DISABLE NETWORK ADAPTERS
call:ECHOX Disable Network Adapters...
powershell -NoProfile -Command "Disable-NetAdapterBinding -Name "*" -ComponentID ms_rspndr ms_lldp ms_lltdio ms_tcpip6, ms_msclient, ms_pacer, ms_server" >nul 2>&1

:: DISABLE NETBIOS
call:ECHOX Disable NetBios...
for %%a in (NetbiosOptions) do for /f "delims=" %%b in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters\Interfaces" /s /f "%%a" ^| findstr "HKEY"') do reg add "%%b" /v "%%a" /t REG_DWORD /d "2" /f >nul 2>&1

:: CONFIGURE NIC SETTINGS
call:ECHOX Configure NIC Settings...
for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
    for /f %%i in ('reg query "%%a" /v "*DeviceSleepOnDisconnect" ^| findstr "HKEY"') do (
        reg add "%%i" /v "*DeviceSleepOnDisconnect" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*EEE" ^| findstr "HKEY"') do (
        reg add "%%i" /v "*EEE" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*ModernStandbyWoLMagicPacket" ^| findstr "HKEY"') do (
        reg add "%%i" /v "*ModernStandbyWoLMagicPacket" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*SelectiveSuspend" ^| findstr "HKEY"') do (
        reg add "%%i" /v "*SelectiveSuspend" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*WakeOnMagicPacket" ^| findstr "HKEY"') do (
        reg add "%%i" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*WakeOnPattern" ^| findstr "HKEY"') do (
        reg add "%%i" /v "*WakeOnPattern" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "AutoPowerSaveModeEnabled" ^| findstr "HKEY"') do (
        reg add "%%i" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "EEELinkAdvertisement" ^| findstr "HKEY"') do (
        reg add "%%i" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "EeePhyEnable" ^| findstr "HKEY"') do (
        reg add "%%i" /v "EeePhyEnable" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "EnableGreenEthernet" ^| findstr "HKEY"') do (
        reg add "%%i" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "EnableModernStandby" ^| findstr "HKEY"') do (
        reg add "%%i" /v "EnableModernStandby" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "GigaLite" ^| findstr "HKEY"') do (
        reg add "%%i" /v "GigaLite" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "PnPCapabilities" ^| findstr "HKEY"') do (
        reg add "%%i" /v "PnPCapabilities" /t REG_DWORD /d "24" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "PowerDownPll" ^| findstr "HKEY"') do (
        reg add "%%i" /v "PowerDownPll" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "PowerSavingMode" ^| findstr "HKEY"') do (
        reg add "%%i" /v "PowerSavingMode" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "ReduceSpeedOnPowerDown" ^| findstr "HKEY"') do (
        reg add "%%i" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "S5WakeOnLan" ^| findstr "HKEY"') do (
        reg add "%%i" /v "S5WakeOnLan" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "SavePowerNowEnabled" ^| findstr "HKEY"') do (
        reg add "%%i" /v "SavePowerNowEnabled" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "ULPMode" ^| findstr "HKEY"') do (
        reg add "%%i" /v "ULPMode" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "WakeOnLink" ^| findstr "HKEY"') do (
        reg add "%%i" /v "WakeOnLink" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "WakeOnSlot" ^| findstr "HKEY"') do (
        reg add "%%i" /v "WakeOnSlot" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "WakeUpModeCap" ^| findstr "HKEY"') do (
        reg add "%%i" /v "WakeUpModeCap" /t REG_SZ /d "0" /f >nul 2>&1
    )
) >nul 2>&1

:: --- REGISTRY OPTIMIZATIONS ---
call:ECHOX Registry and Hardening...

:: DELETE DEFAULTUSER0 ACCOUNT
net user defaultuser0 /delete >nul 2>&1

:: DISABLE SLEEP STUDY
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f >nul 2>&1

:: DISABLE SPEECH MODEL UPDATES
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Speech" /v "AllowSpeechModelUpdate" /t REG_DWORD /d "0" /f

:: RESTORE AND CONIFGURE PHOTO VIEWER FROM W7
for %%i in (tif tiff bmp dib gif jfif jpe jpeg jpg jxr png) do (
	reg add "HKLM\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations" /v ".%%~i" /t REG_SZ /d "PhotoViewer.FileAssoc.Tiff" /f >nul 2>&1
)

:: DISABLE MAINTENANCE
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v "MaintenanceDisabled" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\ScheduledDiagnostics" /v "EnabledExecution" /t REG_DWORD /d "0" /f >nul 2>&1

:: ENABLE HAGS
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f >nul 2>&1

:: FORCE CONTIGUOUS MEMORY ALLOCATION
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DpiMapIommuContiguous" /t REG_DWORD /d "1" /f >nul 2>&1

:: DISABLE STORAGE SENSE
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\StorageSense" /v "AllowStorageSenseGlobal" /t REG_DWORD /d "0" /f

:: DISABLE BLOCKING DOWNLOADS
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f >nul 2>&1

: RESTRICT WINDOWS' ACCESS TO INTERNET RESOURCES
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\InternetManagement" /v "RestrictCommunication" /t REG_DWORD /d "1" /f >nul 2>&1

:: PREVENT WINDOWS FROM SENDING DATA AND CHECKING LICENSE
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "NoGenTicket" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v "AllowWindowsEntitlementReactivation" /t REG_DWORD /d "1" /f >nul 2>&1

:: DISABLE TRANSPARENCY
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f >nul 2>&1

:: VISUAL SETTINGS
reg add "HKCUControl Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010000000" /f >nul 2>&1
reg add "HKCUControl Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "1" /f >nul 2>&1
reg add "HKCUControl Panel\Desktop" /v "FontSmoothing" /t REG_SZ /d "2" /f >nul 2>&1
reg add "HKCUControl Panel\Desktop\WindowMetrics" /v "MinAnimate" /t REG_SZ /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "IconsOnly" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewShadow" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "AlwaysHibernateThumbnails" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "EnableAeroPeek" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v "EnableWindowColorization" /t REG_DWORD /d "1" /f >nul 2>&1

:: MEDIA PLAYER CONFIGURATION
reg add "HKLM\Software\Policies\Microsoft\WMDRM" /v "DisableOnline" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\WindowsMediaPlayer" /v "GroupPrivacyAcceptance" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "AcceptedEULA" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "FirstTime" /t REG_DWORD /d "1" /f >nul 2>&1

:: DO NOT REDUCE SOUNDS WHILE IN A CALL
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Multimedia\Audio" /v "UserDuckingPreference" /t REG_DWORD /d "3" /f >nul 2>&1

:: HIDE NOT CONNECTED AUDIO DEVICES
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Multimedia\Audio\DeviceCpl" /v "ShowHiddenDevices" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Multimedia\Audio\DeviceCpl" /v "ShowDisconnectedDevices" /t REG_DWORD /d "0" /f >nul 2>&1

:: ADD BATCH TO FILE CONTEXT MENU
reg add "HKEY_LOCAL_MACHINE\Software\Classes\.bat\ShellNew" /v "ItemName" /t REG_EXPAND_SZ /d "@C:\Windows\System32\acppage.dll,-6002" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Classes\.bat\ShellNew" /v "NullFile" /t REG_SZ /d "" /f >nul 2>&1

:: ADD reg TO FILE CONTEXT MENU
reg add "HKEY_LOCAL_MACHINE\Software\Classes\.reg\ShellNew" /v "ItemName" /t REG_EXPAND_SZ /d "@C:\Windows\regedit.exe,-309" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Classes\.reg\ShellNew" /v "NullFile" /t REG_SZ /d "" /f >nul 2>&1

:: remove include in library context menu
reg delete "HKEY_CLASSES_ROOT\Folder\ShellEx\ContextMenuHandlers\Library Location" /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\ShellEx\ContextMenuHandlers\Library Location" /f >nul 2>&1

:: Remove Share in context menu
reg delete "HKEY_CLASSES_ROOT\*\shellex\ContextMenuHandlers\ModernSharing" /f >nul 2>&1

:: double click to import power plans
reg add "HKEY_LOCAL_MACHINE\Software\Classes\powerplan\DefaultIcon" /ve /t REG_SZ /d "%%WinDir%%\System32\powercpl.dll,1" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Classes\powerplan\Shell\open\command" /ve /t REG_SZ /d "powercfg /import \"%%1\"" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Classes\.pow" /ve /t REG_SZ /d "powerplan" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\Software\Classes\.pow" /v "FriendlyTypeName" /t REG_SZ /d "PowerPlan" /f >nul 2>&1

:: MISC TWEAKS
lodctr /r >nul 2>&1
lodctr /r >nul 2>&1

:: FINISHING
call:ECHOX Script has ended...

:: Restarting
shutdown /r /f /t 7 /c "POST TWEAKS COMPLETED: RESTARTING"

:: CLEANUP
RD /s /q "%SYSTEMROOT%\Crawen"
DEL "%~f0"
exit

:CONFIG
REM Colors and text format
set "CMDLINE=RED=[31m,S_GRAY=[90m,S_RED=[91m,S_GREEN=[92m,S_YELLOW=[93m,S_MAGENTA=[95m,S_WHITE=[97m,B_BLACK=[40m,B_YELLOW=[43m,UNDERLINE=[4m,_UNDERLINE=[24m"
set "%CMDLINE:,=" & set "%"

REM Check Computer type
for /f "delims=:{}" %%i in ('wmic path Win32_systemenclosure get ChassisTypes^| findstr [0-9]') do set "CHASSIS=%%i"
set /a LAPTOP=0
if %CHASSIS% GTR 7 (
	if %CHASSIS% LSS 17 ( set /a LAPTOP=1 )
    if %CHASSIS% GTR 28 ( set /a LAPTOP=1 )
)

REM Check Ethernet connection
set /a ETHERNET=0
ping -n 1 1.1.1.1 >nul 2>&1
if %errorlevel% EQU 0 ( set /a ETHERNET=1 )
ping -n 1 8.8.8.8 >nul 2>&1
if %errorlevel% EQU 0 ( set /a ETHERNET=1 )

REM Total memory and SvcHost
for /f "skip=1" %%i in ('wmic os get TotalVisibleMemorySize') do if not defined TOTAL_MEMORY set "TOTAL_MEMORY=%%i" & set /a SVCHOST=%%i+1024000

REM RUN FILE AS FULLSCREEN
SET VBSFullScreen=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%VBSFullScreen%" DEL /F /Q "%VBSFullScreen%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell")   >>"%VBSFullScreen%"
ECHO Wscript.Sleep 1                                        >>"%VBSFullScreen%"
ECHO WshShell.SendKeys "{F11}"                              >>"%VBSFullScreen%
ECHO Wscript.Sleep 1                                        >>"%VBSFullScreen%"
goto:eof

:ECHOX
echo !S_WHITE!%time:~0,8% [!S_RED!INFO!S_WHITE!]:!S_GREEN! %*
goto:eof

:POWERSHELL
chcp 437 >nul 2>&1 & powershell -nop -noni -exec bypass -c %* >nul 2>&1 & chcp 65001 >nul 2>&1
goto:eof

:MSGBOX [Text] [Argument] [Title]
echo WScript.Quit Msgbox(Replace("%~1","\n",vbCrLf),%~2,"%~3") >"%TMP%\msgbox.vbs"
cscript /nologo "%TMP%\msgbox.vbs"
set "exitCode=!ERRORLEVEL!" & del /f /q "%TMP%\msgbox.vbs" >nul 2>&1
exit /b %exitCode%

:UNZIP [FilePath] [DestinationPath]
call:POWERSHELL "Expand-Archive -Path '%~1' -DestinationPath '%~2'"
goto:eof
