
"EnergyPlus-23.1.0-87ed9199d4-Windows-x86_64.exe" install --auto-answer installationErrorWithCancel=Ignore --accept-licenses --confirm-command
timeout 30
mklink "C:\Users\Public\Desktop\EnergyPlus.lnk" "C:\EnergyPlusV23-1-0\EP-Launch.exe"