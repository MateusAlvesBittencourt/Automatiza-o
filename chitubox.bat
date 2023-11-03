setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
timeout /t 60
del /s /q "C:\Users\%username%\Desktop\CHITUBOX.lnk"
mklink "C:\Users\Public\Desktop\Chitubox" "C:\Program Files\CHITUBOX  V1.9.4\CHITUBOX.exe"
taskkill /f /im CHITUBOX64Install_V1.9.4.exe