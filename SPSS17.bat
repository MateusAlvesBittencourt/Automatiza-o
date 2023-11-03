title Mateus Bittencourt
start /WAIT msiexec /i SPSS.msi /qb
xcopy "readerprod.inf" "C:\Program Files (x86)\SPSSInc\Statistics17" /y
xcopy "spssprod.inf" "C:\Program Files (x86)\SPSSInc\Statistics17" /y
mklink "C:\Users\Public\Desktop\SPSS Statistics 17.0" "C:\Program Files (x86)\SPSSInc\Statistics17\statistics.exe"