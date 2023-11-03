@echo off

chcp 65001

mkdir "C:\Users\Public\Desktop\Autodesk"

color 06
echo ==================================================================================================================================================================================================================
echo "aguarde instalando Inventor 2023"
echo.
::"\\poa01mdt04\deploy$\Applications\Profissional Inventor\image\Installer.exe" -i deploy --offline_mode -q -o "\\poa01mdt04\deploy$\Applications\Profissional Inventor\image\Collection.xml" --installer_version "1.35.0.9"
"\\poa01mdt04\deploy$\Applications\Profissional Inventor\image\Installer.exe" -i deploy --offline_mode --ui_mode basic -o "\\poa01mdt04\deploy$\Applications\Profissional Inventor\image\Collection.xml" --installer_version "1.35.0.9" -norestart

color 01
echo ==================================================================================================================================================================================================================
echo "aguarde instalando Revit 2023"
echo.
::"\\poa01mdt04\deploy$\Applications\Revit 2023\image\Installer.exe" -i deploy --offline_mode -q -o "\\poa01mdt04\deploy$\Applications\Revit 2023\image\Collection.xml" --installer_version "1.35.0.9"
"\\poa01mdt04\deploy$\Applications\Revit\image\Installer.exe" -i deploy --offline_mode --ui_mode basic -o "\\poa01mdt04\deploy$\Applications\Revit\image\Collection.xml" --installer_version "1.35.0.9" -norestart

color 04
echo ==================================================================================================================================================================================================================
echo "aguarde instalando AutoCAD 2023"
echo.
::"\\poa01mdt04\deploy$\Applications\AutoCAD\image\Installer.exe" -i deploy --offline_mode -q -o "\\poa01mdt04\deploy$\Applications\AutoCAD\image\Collection.xml" --installer_version "1.35.0.9"
"\\poa01mdt04\deploy$\Applications\AutoCAD\image\Installer.exe" -i deploy --offline_mode --ui_mode basic -o "\\poa01mdt04\deploy$\Applications\AutoCAD\image\Collection.xml" --installer_version "1.35.0.9" -norestart
echo.

color 02
echo ==================================================================================================================================================================================================================
echo "aguarde instalando 3ds Max 2023"
echo.
"\\poa01mdt04\deploy$\Applications\3dsMax\Setup.exe" -q

color 0F

echo "configurando atalhos"

move "C:\Users\Public\Desktop\Revit 2023.lnk" "C:\Users\Public\Desktop\Autodesk"

move "C:\Users\Public\Desktop\3ds Max 2021.lnk" "C:\Users\Public\Desktop\Autodesk"

del /q /s "\\%computername%\c$\Users\Public\Desktop\Aplacativos da área de trabalho Autodesk.lnk"

mklink "C:\Users\Public\Desktop\AutoCAD 2023" "C:\Arquivos de Programas\Autodesk\AutoCAD 2023\acad.exe"

move "C:\Users\Public\Desktop\AutoCAD 2023" "C:\Users\Public\Desktop\Autodesk"

ren "C:\Users\Public\Desktop\Autodesk Inventor Professional 2023.lnk" "Inventor 2023.lnk"

move "C:\Users\Public\Desktop\Inventor 2023.lnk" "C:\Users\Public\Desktop\Autodesk"

time /t 10 >nul exit