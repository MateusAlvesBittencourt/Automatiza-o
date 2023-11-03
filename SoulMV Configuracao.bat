cacls "C:\Program Files (x86)\mv" /e /p todos:f
cacls "C:\Program Files\MV" /e /p todos:f
mklink "C:\Users\Public\Desktop\SoulMV" "C:\Program Files\MV\SoulMV\SoulMV.exe"
xcopy "\\poa01mdt04.pucrsnet.br\deploy$\Applications\SoulMV Configuracao\main.js" "C:\Program Files\MV\SoulMV\resources\app" /y