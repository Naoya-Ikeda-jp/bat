set source="W:\���S�Ћ��L\(�Ǘ�)(�V�X)\RPA_�o�Η��m�F_SS1\"
set target="W:\���S�Ћ��L\(�Ǘ�)(�V�X)\RPA_�o�Η��m�F_SS1\old\"

echo %source%
set year=%date:~0,4%
set month=%date:~5,2%
set day=%date:~8,2%
set date2=%year%%month%%day%

copy %source%�o�Η�_SS1_��Ɨp.xlsx %target% /-Y
rename %target%�o�Η�_SS1_��Ɨp.xlsx %date2%_�o�Η�_SS1_��Ɨp.xlsx

rem pause
