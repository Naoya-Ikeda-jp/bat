rem グループ名""と出力ファイルを変更する

set @1="RG_BU_CH01"
set @2="RG_KKO_CH01"
set @3="RG_ETSU_CH01"

dsquery group -name %@1% | dsget group -members > C:\Users\TkoSystem\Desktop\%@1%_メンバー一覧.txt
dsquery group -name %@2% | dsget group -members > C:\Users\TkoSystem\Desktop\%@2%_メンバー一覧.txt
dsquery group -name %@3% | dsget group -members > C:\Users\TkoSystem\Desktop\%@3%_メンバー一覧.txt
