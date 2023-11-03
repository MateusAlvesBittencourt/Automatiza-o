Setup.exe /VERYSILENT /NORESTART
mklink "C:\Users\Public\Desktop\Iramuteq" "C:\Program Files (x86)\iramuteq\iramuteq.exe"
mkdir "C:\Users\Default\.iramuteq"
mkdir "C:\Users\%username%\.iramuteq"
xcopy "\\poa01mdt04\deploy$\Applications\Iramuteq\.iramuteq" "C:\Users\Default\.iramuteq" /y /s /c
xcopy "\\poa01mdt04\deploy$\Applications\Iramuteq\.iramuteq" "C:\Users\%username%\.iramuteq" /y /s /c