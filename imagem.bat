

Dism /online /Disable-Feature /FeatureName:VirtualMachinePlatform /all /norestart
Dism /online /Disable-Feature /FeatureName:Microsoft-Windows-Subsystem-Linux /all /norestart

mkdir "C:\Windows\Web\Wallpaper\PUCRS"
xcopy "pucrs.jpg" "C:\Windows\Web\Wallpaper\PUCRS" /y


Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t Reg_DWORD /d "0" /f
Reg.exe load "HKU\Default_User" C:\Users\Default\ntuser.dat
Reg.exe add "HKU\Default_User\SOFTWARE\Microsoft \Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t Reg_DWORD /d "0" /f
Reg.exe add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v EnableAutoTray /t Reg_dword /d 0 /f
Reg.exe add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCortanaButton /t Reg_dword /d 0 /f
Reg.exe add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t Reg_dword /d 0 /f
Reg.exe add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t Reg_dword /d "0" /f
Reg.exe add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t Reg_dword /d "0" /f
Reg.exe add "HKU\De
fault_User\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t Reg_dword /d "1" /f
Reg.exe add "HKU\Default_User\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoPinningStoreToTaskbar" /t Reg_dword /d "1" /f
Reg.exe add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "Wallpaper" /t Reg_SZ /d "C:\Windows\Web\Wallpaper\PUCRS\pucrs.jpg" /f
Reg.exe add "HKU\Default_User\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "WallpaperStyle" /t Reg_SZ /d "4" /f
Reg.exe unload "HKU\Default_User"

Reg.exe delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v SecurityHealth /f

Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "LockScreenImage" /t Reg_SZ /d "C:\Windows\Web\Wallpaper\PUCRS\pucrs.jpg" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "LockScreenOverlaysDisabled" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Google\Chrome\RestoreOnStartupURLs" /v "1" /t Reg_SZ /d "https://pucrs.br" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "PasswordManagerEnabled" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Google\Chrome" /v "BlockThirdPartyCookies" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "RunAsPPL" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DisableNotifications" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PrivateProfile" /v "DisableNotifications" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "DisableNotifications" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\PublicProfile" /v "AllowLocalIPsecPolicyMerge" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Network Connections" /v "NC_AllowNetBridge_NLA" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Network Connections" /v "NC_ShowSharedAccessUI" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t Reg_DWORD /d "255" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "LmCompatibilityLevel" /t Reg_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Ext" /v "VersionCheckEnabled" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa" /v "RestrictAnonymous" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown" /v "bEnableFlash" /t Reg_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUServer" /t Reg_SZ /d "http://poa01wuc01.pucrsnet.br:8530" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUStatusServer" /t Reg_SZ /d "http://poa01wuc01.pucrsnet.br:8530" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "ExplorerRibbonStartsMinimized" /t Reg_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t Reg_dword /d "0" /f
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t Reg_dword /d "0" /f

setx /m ORACLE_HOME "G:\Aplicacoes\ORACLE\OracleClient_12_1_32bits_BERLIN"
setx /m TNS_ADMIN "G:\app_prod\Oracle\Oracle92\network\ADMIN"
setx /m PATH "%PATH%;G:\Aplicacoes\ORACLE\OracleClient_12_1_32bits_BERLIN"

sc config RemoteRegistry start=auto
sc start RemoteRegistry

powercfg.exe -x -monitor-timeout-ac 0

powercfg.exe -x -monitor-timeout-dc 0
powercfg.exe -x -standby-timeout-ac 0
powercfg.exe -x -standby-timeout-dc 0

DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.SkypeApp_15.98.3206.0_x64__kzf8qxf38zg5c
DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxApp_48.66.30001.0_x64__8wekyb3d8bbwe
DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftSolitaireCollectioN_4.8.10142.0_x64__8wekyb3d8bbwe
:: criar o comando acima para rodar no usuario  default e no usuario atual (XBOX)

DISM /Online /Remove-ProvisionedAppxPackage /PackageName:Microsoft.xBOXApp_48.66.30001.0_x64__8wekyb3d8bbwe
