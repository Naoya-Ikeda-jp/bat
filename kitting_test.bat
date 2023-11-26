rem @echo off
rem 
rem echo コンピューター名を変えるコマンド
rem set /p NEW_PC_NAME="コンピュータ名を入力して下さい。 >"
rem echo コンピュータ名を%NEW_PC_NAME%に変更します。
rem wmic computersystem where name="%computername%" call rename name=%NEW_PC_NAME%
rem echo リターンコード 0; で成功
rem echo.

@echo off

echo ローカルドメイン参加
set DOMAIN_NAME="***.com"
rem set /p DOMAIN_USERNAME="ユーザーネーム >"
rem set /p DOMAIN_PASSWORD="パスワード >"
set DOMAIN_USERNAME="administrator"
set DOMAIN_PASSWORD="admin"
wmic ComputerSystem WHERE "name='%computername%'" CALL JoinDomainOrWorkgroup Name="%DOMAIN_NAME%" Password="%DOMAIN_PASSWORD%" Username="%DOMAIN_USERNAME%" FJoinOptions=3
echo リターンコード 0; で成功
echo.

echo ドメインユーザーアカウント追加
echo domainname\username の形式で指定してください。
rem 入力
set /p USERNAME="***user"
net localgroup Administrators %USERNAME% /add
set /p USERNAME="ドメインユーザーユーザーネーム >"
net localgroup Administrators %USERNAME% /add
echo.

echo ドメイン設定終了

@echo off

echo ファイルの拡張子を表示する
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
echo.

echo 高速スタートアップ無効化
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
echo.


echo 電源オプション
powercfg /x /monitor-timeout-dc 4
powercfg /x /monitor-timeout-ac 10
powercfg /x /standby-timeout-dc 0
powercfg /x /standby-timeout-ac 0
echo.




@echo off

echo.
echo ======================
echo 「ホームボタン」の設定
echo ======================
echo.

rem ----- 環境変数の設定 -----
set PARAMETER="https://senqcia.cybozu.com/g"

rem -----「ホームボタン」を有効にする -----
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "HomeButtonEnabled" /t REG_DWORD /d "1" /f

rem -----「ホームボタン」を押したときに開くページの設定 -----
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "HomeButtonPage" /t REG_SZ /d "%PARAMETER%" /f

rem rem ----- 環境変数の設定 -----
rem set PARAMETER=http://automationlabo.com
rem 
rem rem -----「ホームボタン」を無効にする -----
rem reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "HomeButtonEnabled" /f
rem 
rem rem -----「ホームボタン」を押したときに開くページの削除 -----
rem reg delete "HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "HomeButtonPage" /f


pause

exit

rem 既定アプリ
start ms-settings:defaultapps
rem マウス設定
start ms-settings:bluetooth
rem アダプターの設定_ipv6無効
netsh interface ipv6 set interface "Wi-Fi" disabled
rem フォルダオプション
control /name Microsoft.FolderOptions

start "W:\■全社共有\(管理)(シス)\999_temp\INT_インターネットオプション設定.bat"

