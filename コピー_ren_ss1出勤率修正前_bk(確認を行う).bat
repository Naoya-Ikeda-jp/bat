set source="W:\■全社共有\(管理)(シス)\RPA_出勤率確認_SS1\"
set target="W:\■全社共有\(管理)(シス)\RPA_出勤率確認_SS1\old\"

echo %source%
set year=%date:~0,4%
set month=%date:~5,2%
set day=%date:~8,2%
set date2=%year%%month%%day%

copy %source%出勤率_SS1_作業用.xlsx %target% /-Y
rename %target%出勤率_SS1_作業用.xlsx %date2%_出勤率_SS1_作業用.xlsx

rem pause
