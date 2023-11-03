@echo off

mkdir "C:\Autodesk\install"

xcopy "\\poa01mdt04\deploy$\Applications\Revit\image" "C:\Autodesk\install\image" /E /I /Y /Q

"C:\Autodesk\install\image\Installer.exe" -i deploy --offline_mode -q -o "C:\Autodesk\install\image\Collection.xml" --installer_version "1.35.0.9"

rmdir /q /s "C:\Autodesk\install"

mkdir "C:\Users\Public\Desktop\Autodesk"

move "C:\Users\Public\Desktop\Revit 2023.lnk" "C:\Users\Public\Desktop\Autodesk"



