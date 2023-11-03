msiexec.exe /i "\\poa01mdt04\deploy$\Applications\Saepro\SAEPRO.msi" /qb
mkdir "C:\Program Files (x86)\Cienge\SAEPRO"
xcopy "\\poa01mdt04\deploy$\Applications\Saepro\Exe" "C:\Program Files (x86)\Cienge\SAEPRO" /y /s /c
del /q /s "C:\Users\Public\Desktop\SAEPRO.lnk"
xcopy "C:\Program Files (x86)\Cienge\SAEPRO\Saepro.lnk" "C:\Users\Public\Desktop" /y /s /c