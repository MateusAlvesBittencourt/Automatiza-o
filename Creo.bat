@echo off

chcp 65001

echo Movendo arquivos para a pasta C:\PTC_Creo.....

xcopy "\\poa01mdt04\deploy$\Applications\PTC_Creo\sillent-xml" "C:\PTC_Creo" /y /s /c /i /q

echo  Instalando o PTC Creo por parametros de instalção silenciosa.....

"C:\PTC_Creo\setup.exe" -xml "C:\PTC_Creo\creobase.p.xml" -xml "C:\PTC_Creo\dma.p.xml" -xml "C:\PTC_Creo\layout.p.xml" -xml "C:\PTC_Creo\pma.p.xml" -xml "C:\PTC_Creo\sim.p.xml"

echo Movendo arquivo de configuração para a pasta C:\Program Files\PTC\Creo

xcopy "\\poa01mdt04\deploy$\Applications\PTC_Creo\Config" "C:\Program Files\PTC\Creo 7.0.1.0\Common Files\text" /y /s /c

echo Excluindo arquivos temporários que foram criados pela instalação indevida do PTC Creo.....

rmdir /s /q "C:\PTC_Creo"

echo Criar pasta na área de trabalho publica para todos usuarios que utilizam a estaçao de trabalho.....

mkdir "C:\Users\Public\Desktop\PTC Creo"

echo Criando atalhos na área de trabalho publica para todos usuarios que utilizam a estaçao de trabalho.....

move "C:\Users\Public\Desktop\Creo Direct 7.0.1.0.lnk" "C:\Users\Public\Desktop\PTC Creo"

move "C:\Users\Public\Desktop\Creo Distributed Batch 7.0.1.0.lnk" "C:\Users\Public\Desktop\PTC Creo"

move "C:\Users\Public\Desktop\Creo Layout 7.0.1.0.lnk" "C:\Users\Public\Desktop\PTC Creo"

move "C:\Users\Public\Desktop\Creo Modelcheck 7.0.1.0.lnk" "C:\Users\Public\Desktop\PTC Creo"

move "C:\Users\Public\Desktop\Creo Parametric 7.0.1.0.lnk" "C:\Users\Public\Desktop\PTC Creo"

move "C:\Users\Public\Desktop\Creo Simulate 7.0.1.0.lnk" "C:\Users\Public\Desktop\PTC Creo"

move "C:\Users\Public\Desktop\Creo UI Editor 7.0.1.0.lnk" "C:\Users\Public\Desktop\PTC Creo"