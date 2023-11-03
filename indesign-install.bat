msiexec.exe -i "\\poa01mdt04\deploy$\Applications\Adobe EP\Build\Adobe EP.msi" /qn

mkdir "C:\Users\Public\Desktop\Adobe"

move "C:\Users\Public\Desktop\Adobe Creative Cloud.lnk" "C:\Users\Public\Desktop\Adobe"

move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe After Effects 2023.lnk" "C:\Users\Public\Desktop\Adobe"

move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Animate 2023.lnk" "C:\Users\Public\Desktop\Adobe"

move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Illustrator 2023.lnk" "C:\Users\Public\Desktop\Adobe"

move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe InDesign 2023.lnk" "C:\Users\Public\Desktop\Adobe"

move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop 2023.lnk" "C:\Users\Public\Desktop\Adobe"

move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Premiere Pro 2023.lnk" "C:\Users\Public\Desktop\Adobe"

move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Premiere Rush.lnk" "C:\Users\Public\Desktop\Adobe"

move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Dimension.lnk" "C:\Users\Public\Desktop\Adobe"

del /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Creative Cloud.lnk"

del /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Acrobat Reader DC.lnk"

del /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Acrobat.lnk"

del /s /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Acrobat Distiller.lnk"