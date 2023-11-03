setup.exe /sp- /silent /norestart
xcopy "\\poa01mdt04\deploy$\Applications\Molegro Virtual Docker\WalterFilgueira.license" "C:\Program Files (x86)\Molegro\MVD\bin" /Y
mklink "C:\users\public\Desktop\Molegro Virtual Docker.lnk" "C:\Program Files (x86)\Molegro\MVD\bin\mdm.exe"