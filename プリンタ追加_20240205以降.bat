@ECHO OFF

setlocal enabledelayedexpansion

REM ==�v�����^�h���C�o�̒ǉ�=============
set Dirver_1="Canon Generic Plus LIPSLX"
set Dirver_3="Canon LBP441/442/443 LIPSLX"
REM =====================================

REM ==�v�����^���==============================================
set PRINTER_NAME="p_chb_0 Canon LBP441/442/443 LIPSLX"
set PRINTER_DRIVER="Canon LBP441/442/443 LIPSLX"
set LOCAL_PORT="10.175.32.240"
set LOCAL_IP="10.175.32.240"

REM �����@:2020/11/30�ǉ��\�聫(Dirver_4)
set PRINTER_NAME3="p_chb_4N Canon iR-ADV C5740F"
set PRINTER_DRIVER3="Canon Generic Plus LIPSLX"
set LOCAL_PORT3="10.175.32.242"
set LOCAL_IP3="10.175.32.242"
REM ==========================================================


REM �v�����^�h���C�o�̒ǉ���
cd /d C:\Windows\System32\Printing_Admin_Scripts\ja-JP
    if "%PROCESSOR_ARCHITECTURE%" EQU "x86" (
    cscript prndrvr.vbs -a -m !Dirver_1! -v 3 -i "\\nsaws01\Common\���S�Ћ��L\(�Ǘ�)(�V�X)\�v�����^�ǉ��o�b�`�t�@�C��\�e�c_�v�����^�h���C�o\C_C5740_32\Driver\CNLB0M.INF"
    cscript prndrvr.vbs -a -m !Dirver_3! -v 3 -i "\\nsaws01\Common\���S�Ћ��L\(�Ǘ�)(�V�X)\�v�����^�ǉ��o�b�`�t�@�C��\�e�c_�v�����^�h���C�o\C_LBP441_32\Driver\CNLB0J.INFF"
    )ELSE (
    cscript prndrvr.vbs -a -m !Dirver_1! -v 3 -i "\\nsaws01\Common\���S�Ћ��L\(�Ǘ�)(�V�X)\�v�����^�ǉ��o�b�`�t�@�C��\�e�c_�v�����^�h���C�o\C_C5740_64\Driver\CNLB0MA64.INF"
    cscript prndrvr.vbs -a -m !Dirver_3! -v 3 -i "\\nsaws01\Common\���S�Ћ��L\(�Ǘ�)(�V�X)\�v�����^�ǉ��o�b�`�t�@�C��\�e�c_�v�����^�h���C�o\C_LBP441_64\Driver\CNLB0JA64.INF"
    )


REM �v�����^�ǉ�
cd /d C:\Windows\System32\Printing_Admin_Scripts\ja-JP
     REM �ʐM�|�[�g�̍쐬��
     cscript prnport.vbs -a -r !LOCAL_PORT! -h !LOCAL_IP! -o raw -n 9100
     cscript prnport.vbs -a -r !LOCAL_PORT1! -h !LOCAL_IP1! -o raw -n 9100
     cscript prnport.vbs -a -r !LOCAL_PORT2! -h !LOCAL_IP2! -o raw -n 9100
     cscript prnport.vbs -a -r !LOCAL_PORT3! -h !LOCAL_IP3! -o raw -n 9100
     REM �v�����^�̒ǉ���
     cscript prnmngr.vbs -a -p !PRINTER_NAME! -m !PRINTER_DRIVER! -r !LOCAL_PORT!
     cscript prnmngr.vbs -a -p !PRINTER_NAME3! -m !PRINTER_DRIVER3! -r !LOCAL_PORT3!
     REM �v�����^�폜
     cscript prnmngr.vbs -d -p !PRINTER_NAME1!
     cscript prnmngr.vbs -d -p !PRINTER_NAME2!
     