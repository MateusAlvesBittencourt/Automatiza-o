chcp 65001
mkdir "C:\Users\Public\Desktop\ACCA"
xcopy "Solarius.exe" "C:\" /y /s /c /i
"C:\Solarius.exe" -SILENTMODE
:inicio
timeout /t 30
if not exist "C:\Users\Public\Desktop\Solarius-PV v.usBIM(b) (x64).lnk" (
    goto inicio
)
rename "C:\Users\Public\Desktop\Solarius-PV v.usBIM(b) (x64).lnk" "Solarius-PV.lnk"
move "C:\Users\Public\Desktop\Solarius-PV.lnk" "C:\Users\Public\Desktop\ACCA"
del "C:\Solarius.exe" /s /q