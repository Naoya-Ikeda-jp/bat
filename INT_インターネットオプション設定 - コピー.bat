@echo off
rem スタートページ
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "https://***.cybozu.com/g/" /f

rem Web サイトを表示するたびに確認する
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "SyncMode5" /t REG_DWORD /d "3" /f

rem -フォームと検索をオンに
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Use FormSuggest" /t REG_SZ /d "yes" /f

rem -フォームのユーザー名およびパスワードをオフに
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "FormSuggest Passwords" /t REG_SZ /d "no" /f

rem -設定を自動的に検出するをオフに
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v "AutoDetect" /t REG_DWORD /d "0"

rem -メニューバー
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\MINIE" /v "AlwaysShowMenus" /t REG_DWORD /d "1" /f

rem -お気に入りバー
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\MINIE" /v "LinksBandEnabled" /t REG_DWORD /d "1" /f

rem まだうまくいかない
rem -ツールバーを固定


rem 制限付きサイト(CRM対応)
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Range1" /v "http" /t REG_DWORD /d "1" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Range1" /v ":Range" /t REG_SZ /d "10.1.1.1" /f

pause
exit


