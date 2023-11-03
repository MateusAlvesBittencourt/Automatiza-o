chcp 65001
image\Installer.exe -i deploy --offline_mode -q -o image\Collection.xml --installer_version "1.35.0.9"
mkdir "C:\Users\Public\Desktop\Autodesk"
mklink "C:\Users\Public\Desktop\AutoCAD 2024" "C:\Arquivos de Programas\Autodesk\AutoCAD 2024\acad.exe"
move "C:\Users\Public\Desktop\AutoCAD 2024" "C:\Users\Public\Desktop\Autodesk"
del "C:\users\Public\Desktop\AutoCAD 2024 - English.lnk"

rem ========== Install the deployment with basic UI ==========
rem "\\poa01mdt04\deploy$\Applications\Autodesk AutoCAD 2024\image\Installer.exe" -i deploy --offline_mode --ui_mode basic -o "\\poa01mdt04\deploy$\Applications\Autodesk AutoCAD 2024\image\Collection.xml" --installer_version "1.40.0.24"

rem ========== Install the deployment silently ==========
rem "\\poa01mdt04\deploy$\Applications\Autodesk AutoCAD 2024\image\Installer.exe" -i deploy --offline_mode -q -o "\\poa01mdt04\deploy$\Applications\Autodesk AutoCAD 2024\image\Collection.xml" --installer_version "1.40.0.24"

rem ========== Uninstall the individual product ==========

rem ========== Uninstall Autodesk AutoCAD 2024 - English
rem "\\poa01mdt04\deploy$\Applications\Autodesk AutoCAD 2024\image\Installer.exe" -i uninstall -q --manifest "\\poa01mdt04\deploy$\Applications\Autodesk AutoCAD 2024\image\ACD_2024_en-US\setup.xml" --extension_manifest "\\poa01mdt04\deploy$\Applications\Autodesk AutoCAD 2024\image\ACD_2024_en-US\setup_ext.xml"

