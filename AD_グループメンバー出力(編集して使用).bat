rem �O���[�v��""�Əo�̓t�@�C����ύX����

set @1="RG_BU_CH01"
set @2="RG_KKO_CH01"
set @3="RG_ETSU_CH01"

dsquery group -name %@1% | dsget group -members > C:\Users\TkoSystem\Desktop\%@1%_�����o�[�ꗗ.txt
dsquery group -name %@2% | dsget group -members > C:\Users\TkoSystem\Desktop\%@2%_�����o�[�ꗗ.txt
dsquery group -name %@3% | dsget group -members > C:\Users\TkoSystem\Desktop\%@3%_�����o�[�ꗗ.txt
