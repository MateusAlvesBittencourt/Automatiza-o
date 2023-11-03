
mkdir "C:\program files (x86)\Qt Designer"
xcopy "\\poa01mdt04\deploy$\Applications\Qt Designer" "C:\program files (x86)\Qt Designer" /y /s /c /i /q
mklink "C:\Users\Public\Desktop\Qt Designer" "C:\Program Files (x86)\Qt Designer\designer.exe"