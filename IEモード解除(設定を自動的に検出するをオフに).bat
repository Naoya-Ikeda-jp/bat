@echo off
rem -�ݒ�������I�Ɍ��o������I�t��
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v "AutoDetect" /t REG_DWORD /d "0"

pause
exit


