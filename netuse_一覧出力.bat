@echo off

REM 移行先ディレクトリをセット(C:\Users\ユーザー名)
set target=%UserProfile%"\Desktop"

REM *************************
ECHO ドライブ一覧
REM *************************


REM デスクトップ↓
net use > %target%\netuse.txt
REM cmd /k
REM pause