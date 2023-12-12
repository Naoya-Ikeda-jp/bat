set source="C:\***\"
set target="C:\***\old\"

echo %source%
set year=%date:~0,4%
set month=%date:~5,2%
set day=%date:~8,2%
set date2=%year%%month%%day%

copy %source%aaa_ì‹Æ—p.xlsx %target% /Y
rename %target%bbb_ì‹Æ—p.xlsx %date2%_bbb_ì‹Æ—p.xlsx

rem pause
