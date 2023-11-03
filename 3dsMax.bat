7za.exe x -o"%ProgramFiles%\3dsMax" "setup.zip" -y
image\Installer.exe -i deploy --offline_mode -q -o image\Collection.xml --installer_version "1.35.0.9"
if not exist "C:\Users\Public\Desktop\Autodesk" ( mkdir "C:\Users\Public\Desktop\Autodesk" )
move "C:\Users\Public\Desktop\3ds Max 2023.lnk" "C:\Users\Public\Desktop\Autodesk"
del /q "C:\Program Files\3dsMax"