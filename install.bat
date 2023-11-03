@echo off

chcp 65001

color 02

mkdir "C:\install\AutoCAD"

mkdir "C:\install\Revit"

mkdir "C:\install\3dsMax 2023"

mkdir "C:\install\Inventor"

echo copiando ........

xcopy "\\poa01mdt04\deploy$\Applications\AutoCAD\image" "C:\install\AutoCAD\image" /E /I /Y /Q

xcopy "\\poa01mdt04\deploy$\Applications\Revit\image" "C:\install\Revit\image" /E /I /Y /Q

xcopy "\\poa01mdt04\deploy$\Applications\3dsMax 2023" "C:\install\3dsMax 2023" /E /I /Y /Q

xcopy "\\poa01mdt04\deploy$\Applications\Profissional Inventor\image" "C:\install\Profissional Inventor\image" /E /I /Y /Q

echo instalando Auto AutoCAD

"c:\install\AutoCAD\image\Installer.exe" -i deploy --offline_mode -q -o "c:\install\AutoCAD\image\Collection.xml" --installer_version "1.35.0.9"

echo instalando Revit

"c:\install\Revit\image\Installer.exe" -i deploy --offline_mode -q -o "c:\install\Revit\image\Collection.xml" --installer_version "1.35.0.9"

echo instalando 3dsMax

"c:\install\3dsMax 2023\Setup.exe" -q

echo instalando Inventor

"c:\install\Profissional Inventor\image\Installer.exe" -i deploy --offline_mode -q -o "c:\install\Profissional Inventor\image\Collection.xml" --installer_version "1.35.0.9"

echo craindo atalhos

mkdir "C:\Users\Public\Desktop\Autodesk"

mklink "C:\Users\Public\Desktop\AutoCAD 2023" "C:\Arquivos de Programas\Autodesk\AutoCAD 2023\acad.exe"

move "C:\Users\Public\Desktop\AutoCAD 2023" "C:\Users\Public\Desktop\Autodesk"

move "C:\Users\Public\Desktop\Revit 2023.lnk" "C:\Users\Public\Desktop\Autodesk"

move "C:\Users\Public\Desktop\3ds Max 2023.lnk" "C:\Users\Public\Desktop\Autodesk"

del /q /s "\\%computername%\c$\Users\Public\Desktop\Aplicativo da área de trabalho Autodesk.lnk"

ren "C:\Users\Public\Desktop\Autodesk Inventor Professional 2023.lnk" "Inventor 2023.lnk"

move "C:\Users\Public\Desktop\Inventor 2023.lnk" "C:\Users\Public\Desktop\Autodesk"

echo removendo arquivos temporarios

rmdir /q /s "C:\install"

rmdir /q /s "\\%computername%\c$\Users\Public\Desktop\Aplicativo da área de trabalho Autodesk.lnk"