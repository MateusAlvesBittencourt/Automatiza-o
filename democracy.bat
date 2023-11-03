chcp 65001
del "c:\users\public\desktop\democracy 3"
"\\poa01mdt04\deploy$\Applications\Democracy 3\setup.exe" /S /VERYSILENT
move "c:\users\%username%\desktop\Democracy 3.lnk" "c:\users\public\desktop\Democracy 3.lnk"
