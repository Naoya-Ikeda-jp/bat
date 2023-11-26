@echo off

set csv = "C:\データ.csv"
@rem 202002移動対応--
if exist csv (del %csv%)

@rem 202002移動対応--
set a="C:出力データ.sql"
set b="C:"
@rem 202002移動対応--

REM 1ヶ月前取得
SET YYYYMM=%DATE:~-10,4%%DATE:~-5,2%
SET /a ONEMONTHAGO=YYYYMM-1
if !ONEMONTHAGO:~-2!==00 SET /a ONEMONTHAGO+=12-100
@rem echo %ONEMONTHAGO%

set statistics_date=%ONEMONTHAGO%
@rem SET statistics_date=202001

sqlplus -S DB_USER/user@aa @%a% %statistics_date%

copy C:\test.csv %b%\データ.csv

@rem pause