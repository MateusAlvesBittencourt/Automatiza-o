chcp 65001
setup.exe /passive
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "AuthorizedCDFPrefix" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "Comments" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "Contact" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "DisplayVersion" /t REG_SZ /d "10.0.103" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "HelpLink" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "HelpTelephone" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "InstallDate" /t REG_SZ /d "20170601" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "InstallLocation" /t REG_SZ /d "C:\Program Files (x86)\\" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "InstallSource" /t REG_SZ /d "C:\Program Files (x86)\Common Files\Wise Installation Wizard\\" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "ModifyPath" /t REG_EXPAND_SZ /d "MsiExec.exe /I{9E35D32B-00B8-4EC8-A086-565FF4784182}" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "Publisher" /t REG_SZ /d "Starta - Empreendedorismo e Inovação" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "Readme" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "Size" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "EstimatedSize" /t REG_DWORD /d "297390" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "UninstallString" /t REG_EXPAND_SZ /d "MsiExec.exe /I{9E35D32B-00B8-4EC8-A086-565FF4784182}" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "URLInfoAbout" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "URLUpdateInfo" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "VersionMajor" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "VersionMinor" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "WindowsInstaller" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "Version" /t REG_DWORD /d "167772263" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "Language" /t REG_DWORD /d "1033" /f
Reg.exe add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{9E35D32B-00B8-4EC8-A086-565FF4784182}" /v "DisplayName" /t REG_SZ /d "MakeMoney 10!" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Program Files (x86)\MakeMoney 10!\MakeMoneyX.exe" /t REG_SZ /d "RUNASADMIN" /f
mkdir "C:\Program Files (x86)\MakeMoney 10!"
xcopy "\\poa01mdt04\deploy$\Applications\Make Money 10\lic.txt" "C:\Program Files (x86)\MakeMoney 10!" /y
cacls "C:\Program Files (x86)\MakeMoney 10!" /E /T /C /P todos:F
mklink "C:\users\public\desktop\MakeMoney.lnk" "C:\Program Files (x86)\MakeMoney 10!\MakeMoneyX.exe"

cacls "C:\Users\Public\Desktop\MakeMoney" /E /T /C /P todos:F

del "C:\Users\Public\Desktop\MakeMoney" /f

Numero de serie sala 915: EDU-0292294
SENHA: 109021211163715600035

Usuário: pucrsubea
Senha pré-cadastrada: pucrsubea
