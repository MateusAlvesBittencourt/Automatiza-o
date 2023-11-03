@echo off
chcp 1252
color b
mode con: cols=90 lines=55 & title CPUZ by Bittencourt

:loop

cls
echo  ========================================================================================
echo                                      CPUZ by Bittencourt
echo  ========================================================================================
echo                Coleta as informações básicas de hardware do Computador
echo  ========================================================================================
echo.
set /p computer=Patrimonio: 
cls
echo  ========================================================================================
echo.
echo                    Especificações de Hardware para %computer%
echo.
echo  ========================================================================================
echo.
echo                                    Marca / Modelo
wmic /node:%computer% computersystem get manufacturer, model
echo.
wmic /node:%computer% bios get serialnumber
echo.
echo  ========================================================================================
echo.
echo                                     Processador
echo.
wmic /node:%computer% cpu get name, NumberOfCores, NumberOfLogicalProcessors
echo.
echo  ========================================================================================
echo.
echo                                    Memoria RAM
wmic /node:%computer% computersystem get TotalPhysicalMemory
echo.
wmic /node:%computer% memorychip get capacity, speed
echo.
echo  ========================================================================================
echo.
echo                                    Armazenamento
wmic /node:%computer% diskdrive get size, name, model
echo.
echo  ========================================================================================
echo.
echo                                 Sistema Operacional
echo.
wmic /node:%computer% os get caption, buildNumber, OSArchitecture
echo.
echo  ========================================================================================
echo.
echo                                      Username
wmic /node:%computer% computersystem get username
echo.
echo  ========================================================================================
echo.

echo Pressione qualquer tecla para nova consulta.

pause >NUL

goto loop