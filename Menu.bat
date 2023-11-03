@echo off
chcp 65001
cls
:: Menu de opções
:inicio
echo.
echo.
echo                        #################################################################################
echo                        #                      Selecione conforme sua necessidade                       #
echo                        #                                                                               #
echo                        #################################################################################
echo                        #                                                                               #
echo                        #   #####################     #####################     #####################   #
echo                        #   # 1 - Sair          #     # 2 - capturar      #     # 3 - reboot        #   #
echo                        #   #####################     #####################     #####################   #
echo                        #                                                                               #
echo                        #   #####################     #####################     #####################   #
echo                        #   # 4 - uninstall Sof #     # 5 - Criar_lista   #     #                   #   #
echo                        #   #####################     #####################     #####################   #
echo                        #                                                                               #
echo                        #   #####################     #####################     #####################   #
echo                        #   #                   #     #                   #     #                   #   #
echo                        #   #####################     #####################     #####################   #
echo                        #                                                                               #
echo                        #################################################################################
echo.
choice /c 12345 /n /m "Selecione conforme sua necessidade: "

:: Bloco de seleção
if errorlevel 5 goto Criar_lista
if errorlevel 4 goto uninstall
if errorlevel 3 goto reboot
if errorlevel 2 goto captura
if errorlevel 1 goto Sair

:: Bloco de execução


:uninstall
cls
set /p num_desktops="Digite o número de desktops a serem desinstalados os softwares: "
set i=1
:loop
if %i% gtr %num_desktops% goto :end
set /p desktop_name="Digite o nome do desktop %i%: "
wmic /node:%desktop_name% product get name
set /p software_name="Digite o nome do software a ser desinstalado: "
wmic /node:%desktop_name% product where name="%software_name%" call uninstall
set /a i+=1
goto :loop
echo.
set /p resp="Deseja desinstalar mais algum software? (S/N):"
echo.
if %resp%==S goto :uninstall
if %resp%==s goto :uninstall
if %resp%==N goto :inicio
if %resp%==n goto :inicio
goto i

:reboot
cls
set /p num_desktops="Digite o número de desktops a serem reiniciados: "
set i=1
:loop
if %i% gtr %num_desktops% goto :end
set /p desktop_name="Digite o nome do desktop %i%: "
shutdown -r -t 01 -f -m \\%desktop_name%
set /a i+=1
goto :loop
ping %desktop_name%
echo.
set /p resp="Deseja reiniciar mais algum desktop? (S/N) ou deseja capturar alguma maquina remoto: "
echo.
if %resp%==S goto :reboot
if %resp%==s goto :reboot
if %resp%==N goto :inicio
if %resp%==n goto :inicio
goto i

:captura
cls
set /p num_desktops="Digite o número de desktops a serem capturados: "
set i=1
:loop
if %i% gtr %num_desktops% goto :end
set /p desktop_name="Digite o nome do desktop %i%: "
mstsc.exe /v:%desktop_name%
set /a i+=1
goto :loop
ping %desktop_name%
echo.
set /p resp="Deseja capturar mais algum desktop? (S/N) ou deseja reiniciar alguma maquina remoto: "
echo.
if %resp%==S goto :captura
if %resp%==s goto :captura
if %resp%==N goto :inicio
if %resp%==n goto :inicio
goto i

:: lista a quantidade de desktops que deseja criar o arquivo de texto, com o nome do software a ser desinstalado
:Criar_lista
cls
:: digitar a quantidade de desktops que deseja criar o arquivo de texto
set /p num_desktops="Digite o número de desktops a serem listados: "
set i=1
:loop
if %i% gtr %num_desktops% goto :end
:: digitar o nome do desktop
set /p desktop_name="Digite o nome do desktop %i%: "
:: digitar o nome do software a ser desinstalado
wmic /node:%desktop_name% product get name

set /p software_name="Digite o nome do software a ser listado: "
:: cria o arquivo de texto com o nome do software a ser desinstalado
wmic /node:%desktop_name% product where name="%software_name%" >> C:\Users\10087622\Desktop\lista
.txt
set /a i+=1
goto :loop
:end
echo.
set /p resp="Deseja listar mais algum software? (S/N):"
echo.
if %resp%==S goto :Criar_lista
if %resp%==s goto :Criar_lista
if %resp%==N goto :inicio
if %resp%==n goto :inicio
goto i

:Sair

exit