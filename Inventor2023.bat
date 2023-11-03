@echo off

echo "aguarde instalando Inventor 2023"

chcp 65001

image\Installer.exe -i deploy --offline_mode -q -o image\Collection.xml --installer_version "1.35.0.9"

mkdir "C:\Users\Public\Desktop\Autodesk"

ren "C:\Users\Public\Desktop\Autodesk Inventor Professional 2023.lnk" "Inventor 2023.lnk"

move "C:\Users\Public\Desktop\Inventor 2023.lnk" "C:\Users\Public\Desktop\Autodesk"