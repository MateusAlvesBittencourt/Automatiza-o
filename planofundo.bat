:: custumizar area de trabalho plano de fundo igual para todos usuarios 

@echo off

REM LOCAL GROUP POLICY PUCRS - LABORATORY

REM WALLPAPER

mkdir "C:\Windows\Web\Wallpaper\PUCRS"
xcopy "\\poa01mdt04.pucrsnet.br\deploy$\Applications\LGPO_ADM\pucrs.jpg" "C:\Windows\Web\Wallpaper\PUCRS" /Y /I /Q

REM definir plano de fundo para todos usuarios

REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" /v OEMBackground /t REG_SZ /d 1 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" /v OEMLogo /t REG_SZ /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" /v OEMName /t REG_SZ /d "PUCRS" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" /v OEMSponsorName /t REG_SZ /d "PUCRS" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" /v OEMSponsorText /t REG_SZ /d "PUCRS" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" /v OEMSponsorURL /t REG_SZ /d "https://www.pucrs.br/" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" /v OEMText /t REG_SZ /d "PUCRS" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background" /v OEMWallpaper /t REG_SZ /d "C:\Windows\Web\Wallpaper\PUCRS\pucrs.jpg" /f