@ECHO OFF

setlocal enabledelayedexpansion

REM ==プリンタドライバの追加=============
set Dirver_1="Canon Generic Plus LIPSLX"
set Dirver_3="Canon LBP441/442/443 LIPSLX"
REM =====================================

REM ==プリンタ情報==============================================
set PRINTER_NAME="p_chb_0 Canon LBP441/442/443 LIPSLX"
set PRINTER_DRIVER="Canon LBP441/442/443 LIPSLX"
set LOCAL_PORT="10.175.32.240"
set LOCAL_IP="10.175.32.240"

REM 複合機:2020/11/30追加予定↓(Dirver_4)
set PRINTER_NAME3="p_chb_4N Canon iR-ADV C5740F"
set PRINTER_DRIVER3="Canon Generic Plus LIPSLX"
set LOCAL_PORT3="10.175.32.242"
set LOCAL_IP3="10.175.32.242"
REM ==========================================================


REM プリンタドライバの追加↓
cd /d C:\Windows\System32\Printing_Admin_Scripts\ja-JP
    if "%PROCESSOR_ARCHITECTURE%" EQU "x86" (
    cscript prndrvr.vbs -a -m !Dirver_1! -v 3 -i "\\nsaws01\Common\■全社共有\(管理)(シス)\プリンタ追加バッチファイル\各営_プリンタドライバ\C_C5740_32\Driver\CNLB0M.INF"
    cscript prndrvr.vbs -a -m !Dirver_3! -v 3 -i "\\nsaws01\Common\■全社共有\(管理)(シス)\プリンタ追加バッチファイル\各営_プリンタドライバ\C_LBP441_32\Driver\CNLB0J.INFF"
    )ELSE (
    cscript prndrvr.vbs -a -m !Dirver_1! -v 3 -i "\\nsaws01\Common\■全社共有\(管理)(シス)\プリンタ追加バッチファイル\各営_プリンタドライバ\C_C5740_64\Driver\CNLB0MA64.INF"
    cscript prndrvr.vbs -a -m !Dirver_3! -v 3 -i "\\nsaws01\Common\■全社共有\(管理)(シス)\プリンタ追加バッチファイル\各営_プリンタドライバ\C_LBP441_64\Driver\CNLB0JA64.INF"
    )


REM プリンタ追加
cd /d C:\Windows\System32\Printing_Admin_Scripts\ja-JP
     REM 通信ポートの作成↓
     cscript prnport.vbs -a -r !LOCAL_PORT! -h !LOCAL_IP! -o raw -n 9100
     cscript prnport.vbs -a -r !LOCAL_PORT1! -h !LOCAL_IP1! -o raw -n 9100
     cscript prnport.vbs -a -r !LOCAL_PORT2! -h !LOCAL_IP2! -o raw -n 9100
     cscript prnport.vbs -a -r !LOCAL_PORT3! -h !LOCAL_IP3! -o raw -n 9100
     REM プリンタの追加↓
     cscript prnmngr.vbs -a -p !PRINTER_NAME! -m !PRINTER_DRIVER! -r !LOCAL_PORT!
     cscript prnmngr.vbs -a -p !PRINTER_NAME3! -m !PRINTER_DRIVER3! -r !LOCAL_PORT3!
     REM プリンタ削除
     cscript prnmngr.vbs -d -p !PRINTER_NAME1!
     cscript prnmngr.vbs -d -p !PRINTER_NAME2!
     