\\poa01mdt04\deploy$\Applications\Energy Plus\EnergyPlus-23.1.0-87ed9199d4-Windows-x86_64.exe install --root "C:\Program Files\Energy Plus" --auto-answer installationErrorWithCancel=Ignore --accept-licenses --confirm-command

mklink "C:\Users\Public\Desktop\EnergyPlus.lnk" "C:\EnergyPlusV23-1-0\EP-Launch.exe"


\\poa01mdt04\deploy$\Applications\PowerSim\powersim.exe /SP- /SUPRESSMSGBOXES /VERYSILENT

\\W3993334\d$\Energy Plus\setup.exe install --auto-answer installationErrorWithCancel=Ignore --accept-licenses --confirm-command

powersim.exe /SP- /SUPRESSMSGBOXES /VERYSILENT

EnergyPlus-23.1.0-87ed9199d4-Windows-x86_64.exe install --auto-answer installationErrorWithCancel=Ignore --accept-licenses --confirm-command