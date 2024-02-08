@echo off
echo "ディスプレイの電源を切る時間の指定を「適用しない」に変更します..."
powercfg /change monitor-timeout-ac 0
powercfg /change monitor-timeout-dc 0

echo "コンピューターをスリープ状態にするを「適用しない」に変更します..."
powercfg /change standby-timeout-ac 0
powercfg /change standby-timeout-dc 0

echo "設定を保存します..."
powercfg /setactive scheme_current

@echo off
echo "高速スタートアップを無効にします..."
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{025A5937-A6BE-4686-A844-36FE4BEC8B6D}\SystemSettings" /v "Enabled" /t REG_DWORD /d 0 /f

echo "設定を保存します..."
powercfg /setactive scheme_current

@echo off
echo "カバーを閉じる際の電源設定を何もしないに設定します..."
powercfg /change lidclose-ac 0
powercfg /change lidclose-dc 0

echo "設定を保存します..."
powercfg /setactive scheme_current

pause