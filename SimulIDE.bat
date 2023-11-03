::mkdir "C:\Program Files\"
7za.exe x -o"%ProgramFiles%\SimulIDE" "setup.zip" -y
mklink "C:\Users\Public\Desktop\SimulIDE" "C:\Program Files\SimulIDE\bin\simulide.exe"


7za.exe x -o"%ProgramFiles%\Cecane" "setup.zip" -y
mklink "C:\Users\Public\Desktop\Cecane" "C:\Program Files\Cecane\Cecane.exe"

7za.exe x -o"%ProgramFiles%\Synopsys" "setup.zip" -y
mklink "C:\Users\Public\Desktop\Synopsys" "C:\Program Files\Synopsys\Synopsys\ai_bin\cscope.exe"

