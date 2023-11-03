title Mateus Bittencourt
mkdir "C:\Program Files (x86)\ImageJ" 
xcopy "\\w3993334\E$\Applications\ImageJ\ImageJ\" "C:\Program Files (x86)\ImageJ" /y /s /c /i /q
mklink "C:\Users\Public\Desktop\ImageJ.lnk" "C:\Program Files (x86)\ImageJ\ImageJ.exe"