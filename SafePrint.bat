"%ProgramFiles%\7-Zip\7z.exe" x -o"%ProgramFiles%\Safeprint" "Setup.zip" -y
mklink "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\SafePrint" "C:\Program Files\Safeprint\sp.exe"