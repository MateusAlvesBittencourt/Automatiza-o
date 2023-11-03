@echo off

echo Instalando o Adobe Acrobat Pro por parametros de instalção silenciosa.....

msiexec -i "\\poa01mdt04\deploy$\Applications\AdobePro_EP\Build\AdobePro_EP.msi" /qb

echo Instalando o Acrobat Pro DC por parametros de instalção silenciosa.....

"\\poa01mdt04\deploy$\Applications\Adobe Acrobat Pro\Build\setup.exe" --silent

echo Criando pasta na área de trabalho publica para todos usuarios que utilizam a estaçao de trabalho.....

mkdir "C:\Users\Public\Desktop\Adobe 2023"

echo Criando atalhos na área de trabalho publica, a partir do executavel do programa, para todos usuarios que utilizam a estaçao de trabalho.....

mklink "C:\Users\Public\Desktop\Adobe 2023\Adobe After Effects 2023" "C:\Program Files\Adobe\Adobe After Effects 2023\Support Files\AfterFX.exe"

mklink "C:\Users\Public\Desktop\Adobe 2023\Adobe Animate 2023" "C:\Program Files\Adobe\Adobe Animate 2023\Animate.exe"

mklink "C:\Users\Public\Desktop\Adobe 2023\Adobe Illustrator 2023" "C:\Program Files\Adobe\Adobe Illustrator 2023\Support Files\Contents\Windows\Illustrator.exe"

mklink "C:\Users\Public\Desktop\Adobe 2023\Adobe InDesign 2023" "C:\Program Files\Adobe\Adobe InDes  ign 2023\InDesign.exe"
  
mklink "C:\Users\Public\Desktop\Adobe 2023\Adobe InDesign 2023" "C:\Program Files\Adobe\Adobe InDesign 2023\InDesign.exe"

mklink "C:\Users\Public\Desktop\Adobe 2023\Adobe Lightroom 2023" "C:\Program Files\Adobe\Adobe Lightroom CC\lightroom.exe"

mklink "C:\Users\Public\Desktop\Adobe 2023\Adobe Photoshop 2023" "C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe"

mklink "C:\Users\Public\Desktop\Adobe 2023\Adobe Premiere Pro 2023" "C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe"

mklink "C:\Users\Public\Desktop\Adobe 2023\Adobe Premiere Rush 2023" "C:\Program Files\Adobe\Adobe Premiere Rush 2.0\Adobe Premiere Rush.exe"

mklink "C:\Users\Public\Desktop\Adobe 2023\Adobe Dimension 2023" "C:\Program Files\Adobe\Adobe Dimension\Dimension.exe"

echo Movendo atalhos da área de trabalho publica para a pasta criada, para todos usuarios que utilizam a estaçao de trabalho.....

move "C:\Users\Public\Desktop\Adobe Creative Cloud.lnk" "C:\Users\Public\Desktop\Adobe 2023"

move "C:\Users\Public\Desktop\Adobe Acrobat.lnk" "C:\Users\Public\Desktop\Adobe 2023"


#!/bin/bash

log_file="F:\log\arquivo.log"
pasta_monitorada="\\poa01mdt04\capture$"

inotifywait -m -r -e create,delete,modify,move "$pasta_monitorada" | while read evento
do
  echo "$(date): $evento" >> "$log_file"
done
