@echo off

"\\poa01mdt04\deploy$\Applications\Minitab 17\minitab17.3.1.0setup.exe" /exenoui /exelang 1046 /qb ACCEPT_EULA=1 LICENSE_SERVER=10.40.48.92 LICENSE_SERVER_PORT=27011 DISABLE_UPDATES=1 DISABLE_ANALYTICS=1

xcopy "\\Poa01mdt04\deploy$\Applications\Minitab 17\MultiUserLicense.ini" "C:\ProgramData\Minitab" /y /s /c /i /q

xcopy "\\poa01mdt04\deploy$\Applications\Minitab 17\ia32" "C:\Program Files (x86)\Common Files\Intel\Shared Libraries\redist\ia32" /y /s /c /i /q

start mtb.exe 

timeout 10 > nul

"//poa01mdt04/deploy$/Applications/Minitab 17/encarrar.bat"