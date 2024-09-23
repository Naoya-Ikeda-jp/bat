@echo off
REM YYMMDD形式で日付を取得
REM set TODAY=%DATE:~0,4%_%DATE:~5,2%_%DATE:~8,2%
REM msg %username% /W %TODAY%

REM REM ファイル存在チェック
REM if exist "W:\■全社共有\(管理)(シス)\RPA_出勤率確認_SS1\出勤率_SS1_%TODAY%.xlsx" (
REM     echo File exists!
REM 
REM 	REM メッセージ
REM 	msg %username% /W "***SS1実行済み:***W:\■全社共有\(管理)(シス)\RPA_出勤率確認_SS1\出勤率_SS1_%TODAY%.xlsx"
REM 
REM ) else (
REM     echo File does not exist.
	REM メッセージ
	msg %username% /W "httpチェックの時間だよ"
REM )


pause
