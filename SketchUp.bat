@echo off

"\\poa01mdt04\deploy$\Applications\Sketchup\sketchup.exe" /silent

xcopy "\\poa01mdt04\deploy$\Applications\Sketchup\SketchUp.lic" "C:\ProgramData\SketchUp\SketchUp 2021" /y /s /c /i /q

mkdir "C:\users\Public\desktop\SketchUp 2021"

move "c:\users\Public\desktop\SketchUp Pro 2021.lnk" "C:\users\Public\desktop\SketchUp 2021"

move "c:\users\Public\desktop\Style Builder 2021.lnk" "C:\users\Public\desktop\SketchUp 2021"

move "c:\users\Public\desktop\LayOut 2021.lnk" "C:\users\Public\desktop\SketchUp 2021"