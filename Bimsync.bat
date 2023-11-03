title Mateus Bitencourt
xcopy "bim.ico" "C:\Windows" /y
if exist "C:\Program Files\Google\Chrome\Application" ( xcopy "BimSync64.lnk" "C:\Users\Public\Desktop" /y & rename "C:\Users\Public\Desktop\BimSync64.lnk" "BimSync.lnk" )
if exist "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" ( xcopy "Bimsync32.lnk" "C:\Users\Public\Desktop" /y & rename "C:\Users\Public\Desktop\Bimsync32.lnk" "BimSync.lnk" )