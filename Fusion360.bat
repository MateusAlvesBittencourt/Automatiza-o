chcp 65001
mkdir "C:\Users\Public\Desktop\Autodesk"
Setup.exe --quiet
:inicio
timeout /t 60
if not exist "C:\Users\%username%\Desktop\Autodesk Fusion 360.lnk" (
    goto inicio
)
move "C:\Users\%username%\desktop\Autodesk Fusion 360.lnk" "C:\Users\Public\Desktop\Autodesk"
xcopy "C:\Users\%username%\AppData\Local\Autodesk" "C:\Users\Default\AppData\Local\Autodesk"
cacls "C:\Users\%username%\AppData\Local\Autodesk" /E /T /C /P todos:F