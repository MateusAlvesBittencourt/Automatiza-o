7za.exe x -o"%ProgramFiles%\Proteus 7" "setup.zip" -y
xcopy "C:\Program Files\Proteus 7\Proteus 7\x86" "C:\Program Files (x86)" /y /s /c /i /q
xcopy "C:\Program Files\Proteus 7\Proteus 7\Programs" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs" /y /s /c /i /q
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ARES\7" /v "Library Paths" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\LIBRARY" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7" /v "Library Paths" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\LIBRARY" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7" /v "Module Paths" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\MODELS" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7" /v "Template Paths" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TEMPLATES" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asem51" /v "Always" /t REG_SZ /d "No" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asem51" /v "CmdLine" /t REG_SZ /d "%%1 /INCLUDES:\"C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\ASEM51\"" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asem51" /v "DdxPath" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\ASEM51\ASEMDDX.EXE" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asem51" /v "ExePath" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\ASEM51\ASEM.EXE" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asem51" /v "LstExtn" /t REG_SZ /d "LST" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asem51" /v "Name" /t REG_SZ /d "ASEM51" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asem51" /v "ObjExtn" /t REG_SZ /d "HEX" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asem51" /v "SrcExtn" /t REG_SZ /d "ASM" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asm11" /v "Always" /t REG_SZ /d "No" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asm11" /v "CmdLine" /t REG_SZ /d "%%1" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asm11" /v "DdxPath" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\ASM11\ASM11DDX.EXE" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asm11" /v "ExePath" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\ASM11\ASM11.EXE" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asm11" /v "LstExtn" /t REG_SZ /d "LST" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asm11" /v "Name" /t REG_SZ /d "ASM11" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asm11" /v "ObjExtn" /t REG_SZ /d "S19" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Asm11" /v "SrcExtn" /t REG_SZ /d "ASM" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\AVRASM2" /v "Always" /t REG_SZ /d "No" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\AVRASM2" /v "CmdLine" /t REG_SZ /d "-fI -o %%2 -l %%3 %%1" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\AVRASM2" /v "DdxPath" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\AVRASM\AVRDDX.EXE" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\AVRASM2" /v "ExePath" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\AVRASM\AVRASM2.EXE" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\AVRASM2" /v "LstExtn" /t REG_SZ /d "LST" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\AVRASM2" /v "Name" /t REG_SZ /d "AVRASM2" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\AVRASM2" /v "ObjExtn" /t REG_SZ /d "HEX" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\AVRASM2" /v "SrcExtn" /t REG_SZ /d "ASM" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Mpasm" /v "Always" /t REG_SZ /d "No" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Mpasm" /v "CmdLine" /t REG_SZ /d "%%1 /q" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Mpasm" /v "DdxPath" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\MPASM\MPASMDDX.EXE" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Mpasm" /v "ExePath" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\MPASM\MPASM.EXE" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Mpasm" /v "LstExtn" /t REG_SZ /d "LST" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Mpasm" /v "Name" /t REG_SZ /d "MPASM" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Mpasm" /v "ObjExtn" /t REG_SZ /d "HEX" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\Mpasm" /v "SrcExtn" /t REG_SZ /d "ASM" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\MpasmWin" /v "Always" /t REG_SZ /d "No" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\MpasmWin" /v "CmdLine" /t REG_SZ /d "\"%%1\" /q" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\MpasmWin" /v "DdxPath" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\MPASM\MPASMDDX.EXE" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\MpasmWin" /v "ExePath" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional\TOOLS\MPASM\MPASMWIN.EXE" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\MpasmWin" /v "LstExtn" /t REG_SZ /d "LST" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\MpasmWin" /v "Name" /t REG_SZ /d "MPASMWIN" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\MpasmWin" /v "ObjExtn" /t REG_SZ /d "HEX" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\ISIS\7\SourceTools\MpasmWin" /v "SrcExtn" /t REG_SZ /d "ASM" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\Proteus Professional\7" /v "Product" /t REG_SZ /d "Proteus Professional" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\Proteus Professional\7" /v "Path" /t REG_SZ /d "C:\Program Files (x86)\Labcenter Electronics\Proteus 7 Professional" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\Proteus Professional\7" /v "Version" /t REG_SZ /d "7.08.02.00" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\Proteus Professional\7" /v "LicenceFamily" /t REG_SZ /d "Professional" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\Proteus Professional\7" /v "UpdateFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\Update Manager\Products\Proteus Professional 7" /v "Product" /t REG_SZ /d "Proteus Professional" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Labcenter Electronics\Update Manager\Products\Proteus Professional 7" /v "Version" /t REG_SZ /d "7" /f
mklink "C:\Users\Public\Desktop\ISIS 7 Professional" "C:\Program Files\Proteus 7\Proteus 7\x86\Labcenter Electronics\Proteus 7 Professional\BIN\ISIS.EXE"