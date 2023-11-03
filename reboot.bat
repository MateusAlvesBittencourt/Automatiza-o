@echo off
chcp 65001
echo.
echo.
echo            =============================================================================
echo            =============================================================================
echo            ==          0000000  0000000  0000000  0000000  0000000  00000000          ==
echo            ==          00   00  00       00   00  00   00  00   00     00             ==
echo            ==          00   00  00       00  00   00   00  00   00     00             ==
echo            ==          00  00   0000000  00 0     00   00  00   00     00             ==
echo            ==          0000     00       00  00   00   00  00   00     00             ==
echo            ==          00 00    00       00   00  00   00  00   00     00             ==
echo            ==          00   00  0000000  0000000  0000000  0000000     00             ==
echo            =============================================================================
echo            =============================================================================
echo.
echo.



:inicio
cls
set /p num_desktops="Digite o número de desktops a serem reiniciados: "
set i=1
:loop
if %i% gtr %num_desktops% goto :end
set /p desktop_name="Digite o nome do desktop %i%: "

%desktop_name%
set /a i+=1
goto :loop
:end
ping %desktop_name%
echo.
set /p resp="Deseja reiniciar mais algum desktop? (S/N) ou deseja capturar alguma maquina remoto: "
echo.
if %resp%==S goto :inicio
if %resp%==s goto :inicio
if %resp%==N goto :fim
if %resp%==n goto :fim

:fim exit


::shutdown -r -t 01 -f -m \\