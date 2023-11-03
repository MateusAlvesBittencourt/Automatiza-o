@echo off

:: Backup de Drivers by ER7

set /p modelo=Informe o modelo do computador: 

echo.
echo Marcas:
echo.
echo 1 - DELL
echo 2 - HP
echo 3 - LENOVO
echo 4 - POSITIVO
echo 5 - ALIENWARE
echo 6 - OUTROS
echo.

set /p op=informe a marca do computador: 

mkdir "C:\TempDrivers\%modelo%"

if %op% equ 1 (set marca=DELL)
if %op% equ 2 (set marca=HP)
if %op% equ 3 (set marca=LENOVO)
if %op% equ 4 (set marca=POSITIVO)
if %op% equ 5 (set marca=ALIENWARE)
if %op% equ 6 (set marca=OUTROS)

cls

echo Realizando a extracao dos drivers...

dism /online /export-driver /destination:"C:\TempDrivers\%modelo%"

echo.

echo Transferindo o backup dos drivers para o repositorio padrao...

PAUSE