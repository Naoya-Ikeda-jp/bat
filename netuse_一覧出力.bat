@echo off

REM �ڍs��f�B���N�g�����Z�b�g(C:\Users\���[�U�[��)
set target=%UserProfile%"\Desktop"

REM *************************
ECHO �h���C�u�ꗗ
REM *************************


REM �f�X�N�g�b�v��
net use > %target%\netuse.txt
REM cmd /k
REM pause