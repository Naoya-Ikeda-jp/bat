set source="C:\Users\***\01_\"
set target="C:\Users\***\01_\送信済み"

copy %source%*.docx %target% /-Y
echo %source%*.docx
set year=%date:~0,4%
set month=%date:~5,2%
set day=%date:~8,2%
set date2=%year%%month%%day%
 
rename %source%*.docx 日報_%date2%.docx
pause
