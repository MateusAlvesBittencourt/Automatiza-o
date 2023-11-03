@echo off
7za.exe x -o"%ProgramFiles%\Apps FAMAT" "setup.zip" -y
mklink "C:\Users\Public\Desktop\EditLim" "C:\Program Files\Apps FAMAT\edilim.exe"
mklink "C:\Users\Public\Desktop\WinPlot" "C:\Program Files\Apps FAMAT\winplot.exe"
mklink "C:\Users\Public\Desktop\Wmatpr" "C:\Program Files\Apps FAMAT\wmatpr.exe"