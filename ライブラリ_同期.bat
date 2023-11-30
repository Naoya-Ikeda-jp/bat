@echo off

setlocal enabledelayedexpansion

REM 日付をyyyy/mm/dd形式で取得する
set d=%date%

REM 日付を年、月、日に分解する
set yyyy=%d:~-10,4%
set mm=%d:~-5,2%
set dd=%d:~-2,2%

REM 時間をhh:mn:ss形式で取得する
REM たんにtimeコマンドと入れるだけだと、hh:mn:ss形式で取得できないことに注意
set t=%time: =0%

REM 時間を時、分、秒に分解する
set hh=%t:~0,2%
set mn=%t:~3,2%
set ss=%t:~6,2%

set TODAY_TIME=%yyyy%%mm%%dd%_%hh%%mn%%ss%

REM 変数セット↓==========================================
set Source_1="\\10.1.1.0\c$\001_WinActor\01_シナリオ"
set Destination_1="\\10.1.1.2\c$\001_WinActor\01_シナリオ"
set Destination_1_2="\\10.1.0.11\c$\001_WinActor\01_シナリオ"
set log_1="\\10.1.1.0\c$\001_WinActor\06_BAT\01_シナリオ_"%TODAY_TIME%".log"

set Source_2="\\10.1.1.0\c$\001_WinActor\06_BAT"
set Destination_2="\\10.1.1.2\c$\001_WinActor\06_BAT"
set Destination_2_2="\\10.1.0.11\c$\001_WinActor\06_BAT"
set log_2="\\10.1.1.0\c$\001_WinActor\06_BAT\06_BAT_"%TODAY_TIME%".log"

set Source_3="\\10.1.1.0\c$\Users\kntsystem\Documents\WinActor\libraries"
set Destination_3_2="\\10.1.0.11\c$\Users\kntsystem\Documents\WinActor\libraries"
set log_3="\\10.1.1.0\c$\001_WinActor\06_BAT\06_BAT_"%TODAY_TIME%".log"

REM 本番コマンド↓==========================================
robocopy !Source_1! !Destination_1_2! /MIR /R:1 /W:1 /NP /LOG:!log_1! /NDL /TEE /XJD /XJF /COPY:DAT /SEC
robocopy !Source_2! !Destination_2_2! /MIR /R:1 /W:1 /NP /LOG:!log_2! /NDL /TEE /XJD /XJF /COPY:DAT /SEC
robocopy !Source_3! !Destination_3_2! /MIR /R:1 /W:1 /NP /LOG:!log_3! /NDL /TEE /XJD /XJF /COPY:DAT /SEC