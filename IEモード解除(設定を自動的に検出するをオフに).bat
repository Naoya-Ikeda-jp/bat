@echo off
rem -設定を自動的に検出するをオフに
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v "AutoDetect" /t REG_DWORD /d "0"

pause
exit


