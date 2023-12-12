@echo off

REM *************************
ECHO ドライブ一覧
REM *************************

net use A:  /delete
net use S:  /delete
net use U:  /delete
net use W:  /delete
net use X:  /delete
net use Z:  /delete

REM *************************
ECHO ドライブ一覧
REM *************************

net use A: \\***\app     
net use S: \\***\system
net use U: \\***\User
net use W: \\***\Common  
net use X: \\***\to
net use Z: \\***01\SCAN  

pause
