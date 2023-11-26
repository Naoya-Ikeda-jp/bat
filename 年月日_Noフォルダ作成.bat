REM/**************
REM	日付フォルダ作成
REM**************/
@echo off

REM/* YYMMDD形式で日付を取得 */
set TODAY=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%

REM/* 同日のフォルダをカウント */
for /f "usebackq delims=" %%i in (`dir /a:d /b %TODAY%*`) do (
     set /a n+=1
)

REM/* フォルダ作成 */
set /a n+=1
mkdir %TODAY%_%n%_