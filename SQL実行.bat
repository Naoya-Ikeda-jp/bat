@echo off

set csv = "C:\�f�[�^.csv"
@rem 202002�ړ��Ή�--
if exist csv (del %csv%)

@rem 202002�ړ��Ή�--
set a="C:�o�̓f�[�^.sql"
set b="C:"
@rem 202002�ړ��Ή�--

REM 1�����O�擾
SET YYYYMM=%DATE:~-10,4%%DATE:~-5,2%
SET /a ONEMONTHAGO=YYYYMM-1
if !ONEMONTHAGO:~-2!==00 SET /a ONEMONTHAGO+=12-100
@rem echo %ONEMONTHAGO%

set statistics_date=%ONEMONTHAGO%
@rem SET statistics_date=202001

sqlplus -S DB_USER/user@aa @%a% %statistics_date%

copy C:\test.csv %b%\�f�[�^.csv

@rem pause