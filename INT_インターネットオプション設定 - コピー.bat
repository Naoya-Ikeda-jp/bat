@echo off
rem �X�^�[�g�y�[�W
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "https://***.cybozu.com/g/" /f

rem Web �T�C�g��\�����邽�тɊm�F����
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "SyncMode5" /t REG_DWORD /d "3" /f

rem -�t�H�[���ƌ������I����
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Use FormSuggest" /t REG_SZ /d "yes" /f

rem -�t�H�[���̃��[�U�[������уp�X���[�h���I�t��
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "FormSuggest Passwords" /t REG_SZ /d "no" /f

rem -�ݒ�������I�Ɍ��o������I�t��
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v "AutoDetect" /t REG_DWORD /d "0"

rem -���j���[�o�[
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\MINIE" /v "AlwaysShowMenus" /t REG_DWORD /d "1" /f

rem -���C�ɓ���o�[
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\MINIE" /v "LinksBandEnabled" /t REG_DWORD /d "1" /f

rem �܂����܂������Ȃ�
rem -�c�[���o�[���Œ�


rem �����t���T�C�g(CRM�Ή�)
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Range1" /v "http" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Range1" /v ":Range" /t REG_SZ /d "10.1.1.1" /f

pause
exit


