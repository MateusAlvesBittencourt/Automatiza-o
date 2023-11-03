chcp 65001
mkdir "C:\Users\Public\Desktop\ACCA"
:inicio
timeout /t 60
if not exist "C:\Users\Public\Desktop\TerMus-BRIDGE v.6.00e.lnk"(
    goto inicio
)
:inicio1
timeout /t 60
if not exist "C:\Users\Public\Desktop\TerMus-PLUS v.5.00c (x64).lnk"(
    goto inicio1
)
:inicio2
timeout /t 60
if not exist "C:\Users\Public\Desktop\Solarius-PV v.usBIM(b) (x64).lnk"(
    goto inicio2
)
rename "C:\Users\Public\Desktop\TerMus-PLUS v.5.00c (x64).lnk" "TerMus-PLUS.lnk"
move "C:\Users\Public\Desktop\TerMus-PLUS.lnk" "C:\Users\Public\Desktop\ACCA"
rename "C:\Users\Public\Desktop\TerMus-BRIDGE v.6.00e.lnk" "TerMus-BRIDGE.lnk"
move "C:\Users\Public\Desktop\TerMus-BRIDGE.lnk" "C:\Users\Public\Desktop\ACCA"
rename "C:\Users\Public\Desktop\Solarius-PV v.usBIM(b) (x64).lnk" "Solarius-PV.lnk"
move "C:\Users\Public\Desktop\Solarius-PV.lnk" "C:\Users\Public\Desktop\ACCA"