@echo off

:inicio

if not exist "C:\Users\Public\Desktop\DIALux evo.lnk" (
  "\\poa01mdt04\deploy$\Applications\DIALux Evo\DIALux_evo_11_0.exe" /s:"\\poa01mdt04\deploy$\Applications\DIALux Evo\silentsetup.ini"
  goto inicio
)