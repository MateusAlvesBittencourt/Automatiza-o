Net use /d U:
Net use U: \\w3993334\f$\Deploy
"U:\DIALux Evo\DIALux Evo\DIALux_evo_11_1.exe" /S
:: criar usuario Aspen senha Aspen@2023

xcopy "C:\Users\10087622\AppData\Local" "C:\Users\Default\AppData\Local" /y /s /c /i
xcopy "C:\Users\10087622\AppData\Roaming" "C:\Users\Default\AppData\Roaming"/y /s /c /i
xcopy "C:\Users\Aspen\AppData\Local" "C:\Users\Default\AppData\Local" /y /s /c /i
xcopy "C:\Users\Aspen\AppData\Roaming" "C:\Users\Default\AppData\Roaming"/y /s /c /i
cacls "C:\ProgramData\AspenTech" /E /T /C /P todos:F
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\AspenTech" /v "InstallDir" /t REG_SZ /d "C:\Program Files (x86)\AspenTech" /f
mklink "C:\Users\Public\Desktop\AspenHysys" "C:\Program Files\AspenTech\Aspen HYSYS V12.1\AspenHysys.exe"
mklink "C:\Users\Public\Desktop\AspenPlus" "C:\Program Files\AspenTech\Aspen Plus V12.1\GUI\Xeq\AspenPlus.exe"

Net use /d U:
Net use U: \\w3993334\f$\Deploy
"U:\DIALux Evo\DIALux Evo\DIALux_evo_11_1.exe" /S
:: criar usuario Aspen senha Aspen@2023

net user "Aspen" "Aspen@2023" /add

@echo off
net user "Aspen" "Aspen@2023" /add /fullname:"Aspen" /comment:"Aspen" /passwordchg:no /expires:never /active:yes
net localgroup administradores "Aspen" /add


::Adobe

mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Softwares"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Creative Cloud.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Acrobat Reader.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop 2023.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Illustrator 2023.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe InDesign 2023.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe After Effects 2023.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Animate 2023.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Illustrator 2023.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe InDesign 2022.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Media Encoder 2023.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Photoshop 2023.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Premiere Pro 2023.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe Premiere Rush.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Dimension.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Adobe"

mkdir "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Softwares"

rem Move todos os arquivos .lnk para a pasta "Softwares"
move "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\*.lnk" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Softwares"

echo Arquivos .lnk movidos para a pasta "Softwares" com sucesso!
pause
