
timeout 10
"%ProgramFiles%\7-Zip\7z.exe" x -o"C:\Certificado PUCRS" "\\poa01mdt04\deploy$\Applications\Certificado PUCRS\PUCRS-CA.zip"
certutil -addstore "Root" "\\poa01mdt04\deploy$\Applications\Certificado PUCRS\PUCRS-CA.cer"
timeout 10
"\\poa01mdt04\deploy$\Applications\Git\setup.exe" /VERYSILENT /NORESTART
timeout 10
mklink "C:\Users\Public\Desktop\Git" "C:\Program Files\Git\git-bash.exe"
timeout 10
npm install electron -g --silent
timeout 10
pip install PyQt5
timeout 10
pip install pyqt5-tools
timeout 10
Title Reg Converter v1.2 & Color 1A
cd %systemroot%\system32
call :IsAdmin

Reg.exe add "HKCR\*\shell\Open with VS Code" /ve /t REG_SZ /d "Edit with VS Code" /f
Reg.exe add "HKCR\*\shell\Open with VS Code" /v "Icon" /t REG_SZ /d "C:\Program Files\Microsoft VS Code\Code.exe,0" /f
Reg.exe add "HKCR\*\shell\Open with VS Code\command" /ve /t REG_SZ /d "\"C:\Program Files\Microsoft VS Code\Code.exe\" \"%%1\"" /f
Reg.exe add "HKCR\Directory\shell\vscode" /ve /t REG_SZ /d "Open Folder as VS Code Project" /f
Reg.exe add "HKCR\Directory\shell\vscode" /v "Icon" /t REG_SZ /d "\"C:\Program Files\Microsoft VS Code\Code.exe\",0" /f
Reg.exe add "HKCR\Directory\shell\vscode\command" /ve /t REG_SZ /d "\"C:\Program Files\Microsoft VS Code\Code.exe\" \"%%1\"" /f
Reg.exe add "HKCR\Directory\Background\shell\vscode" /ve /t REG_SZ /d "Open Folder as VS Code Project" /f
Reg.exe add "HKCR\Directory\Background\shell\vscode" /v "Icon" /t REG_SZ /d "\"C:\Program Files\Microsoft VS Code\Code.exe\",0" /f
Reg.exe add "HKCR\Directory\Background\shell\vscode\command" /ve /t REG_SZ /d "\"C:\Program Files\Microsoft VS Code\Code.exe\" \"%%V\"" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof