rem @echo off
rem 
rem echo �R���s���[�^�[����ς���R�}���h
rem set /p NEW_PC_NAME="�R���s���[�^������͂��ĉ������B >"
rem echo �R���s���[�^����%NEW_PC_NAME%�ɕύX���܂��B
rem wmic computersystem where name="%computername%" call rename name=%NEW_PC_NAME%
rem echo ���^�[���R�[�h 0; �Ő���
rem echo.

@echo off

echo ���[�J���h���C���Q��
set DOMAIN_NAME="***.com"
rem set /p DOMAIN_USERNAME="���[�U�[�l�[�� >"
rem set /p DOMAIN_PASSWORD="�p�X���[�h >"
set DOMAIN_USERNAME="administrator"
set DOMAIN_PASSWORD="admin"
wmic ComputerSystem WHERE "name='%computername%'" CALL JoinDomainOrWorkgroup Name="%DOMAIN_NAME%" Password="%DOMAIN_PASSWORD%" Username="%DOMAIN_USERNAME%" FJoinOptions=3
echo ���^�[���R�[�h 0; �Ő���
echo.

echo �h���C�����[�U�[�A�J�E���g�ǉ�
echo domainname\username �̌`���Ŏw�肵�Ă��������B
rem ����
set /p USERNAME="***user"
net localgroup Administrators %USERNAME% /add
set /p USERNAME="�h���C�����[�U�[���[�U�[�l�[�� >"
net localgroup Administrators %USERNAME% /add
echo.

echo �h���C���ݒ�I��

@echo off

echo �t�@�C���̊g���q��\������
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
echo.

echo �����X�^�[�g�A�b�v������
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
echo.


echo �d���I�v�V����
powercfg /x /monitor-timeout-dc 4
powercfg /x /monitor-timeout-ac 10
powercfg /x /standby-timeout-dc 0
powercfg /x /standby-timeout-ac 0
echo.




@echo off

echo.
echo ======================
echo �u�z�[���{�^���v�̐ݒ�
echo ======================
echo.

rem ----- ���ϐ��̐ݒ� -----
set PARAMETER="https://senqcia.cybozu.com/g"

rem -----�u�z�[���{�^���v��L���ɂ��� -----
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "HomeButtonEnabled" /t REG_DWORD /d "1" /f

rem -----�u�z�[���{�^���v���������Ƃ��ɊJ���y�[�W�̐ݒ� -----
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "HomeButtonPage" /t REG_SZ /d "%PARAMETER%" /f

rem rem ----- ���ϐ��̐ݒ� -----
rem set PARAMETER=http://automationlabo.com
rem 
rem rem -----�u�z�[���{�^���v�𖳌��ɂ��� -----
rem reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "HomeButtonEnabled" /f
rem 
rem rem -----�u�z�[���{�^���v���������Ƃ��ɊJ���y�[�W�̍폜 -----
rem reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "HomeButtonPage" /f


pause

exit

rem ����A�v��
start ms-settings:defaultapps
rem �}�E�X�ݒ�
start ms-settings:bluetooth
rem �A�_�v�^�[�̐ݒ�_ipv6����
netsh interface ipv6 set interface "Wi-Fi" disabled
rem �t�H���_�I�v�V����
control /name Microsoft.FolderOptions

start "W:\���S�Ћ��L\(�Ǘ�)(�V�X)\999_temp\INT_�C���^�[�l�b�g�I�v�V�����ݒ�.bat"

