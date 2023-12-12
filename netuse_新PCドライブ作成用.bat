@echo off

REM *************************
ECHO ドライブ一覧
REM *************************

net use S: \\***\system
net use U: \\***\User
net use W: \\***\Common  
net use X: \\***\to
net use Z: \\sv\SCAN  
net use A: \\***\app     
net use N: \\***\nishi
net use H: \\***\Official

REM cmd /k
pause
REM 削除用
REM net use z: /delete
