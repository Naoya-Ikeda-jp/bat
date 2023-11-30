@echo off

setlocal enabledelayedexpansion

REM ���t��yyyy/mm/dd�`���Ŏ擾����
set d=%date%

REM ���t��N�A���A���ɕ�������
set yyyy=%d:~-10,4%
set mm=%d:~-5,2%
set dd=%d:~-2,2%

REM ���Ԃ�hh:mn:ss�`���Ŏ擾����
REM �����time�R�}���h�Ɠ���邾�����ƁAhh:mn:ss�`���Ŏ擾�ł��Ȃ����Ƃɒ���
set t=%time: =0%

REM ���Ԃ����A���A�b�ɕ�������
set hh=%t:~0,2%
set mn=%t:~3,2%
set ss=%t:~6,2%

set TODAY_TIME=%yyyy%%mm%%dd%_%hh%%mn%%ss%

REM �ϐ��Z�b�g��==========================================
set Source_1="\\10.1.1.0\c$\001_WinActor\01_�V�i���I"
set Destination_1="\\10.1.1.2\c$\001_WinActor\01_�V�i���I"
set Destination_1_2="\\10.1.0.11\c$\001_WinActor\01_�V�i���I"
set log_1="\\10.1.1.0\c$\001_WinActor\06_BAT\01_�V�i���I_"%TODAY_TIME%".log"

set Source_2="\\10.1.1.0\c$\001_WinActor\06_BAT"
set Destination_2="\\10.1.1.2\c$\001_WinActor\06_BAT"
set Destination_2_2="\\10.1.0.11\c$\001_WinActor\06_BAT"
set log_2="\\10.1.1.0\c$\001_WinActor\06_BAT\06_BAT_"%TODAY_TIME%".log"

set Source_3="\\10.1.1.0\c$\Users\kntsystem\Documents\WinActor\libraries"
set Destination_3_2="\\10.1.0.11\c$\Users\kntsystem\Documents\WinActor\libraries"
set log_3="\\10.1.1.0\c$\001_WinActor\06_BAT\06_BAT_"%TODAY_TIME%".log"

REM �{�ԃR�}���h��==========================================
robocopy !Source_1! !Destination_1_2! /MIR /R:1 /W:1 /NP /LOG:!log_1! /NDL /TEE /XJD /XJF /COPY:DAT /SEC
robocopy !Source_2! !Destination_2_2! /MIR /R:1 /W:1 /NP /LOG:!log_2! /NDL /TEE /XJD /XJF /COPY:DAT /SEC
robocopy !Source_3! !Destination_3_2! /MIR /R:1 /W:1 /NP /LOG:!log_3! /NDL /TEE /XJD /XJF /COPY:DAT /SEC