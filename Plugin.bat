@echo off

chcp 65001


if not exist "C:\Users\Public\Desktop\DIALux evo.lnk" (
  setup.exe /s "\\poa01mdt04\deploy$\Applications\DIALux Evo\silentsetup.ini"
  goto exit
)