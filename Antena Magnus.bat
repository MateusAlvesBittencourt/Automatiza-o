@echo off
mkdir "C:\Antena Magnus"
xcopy "Setup.exe" "C:\Antena Magnus" /y /q /i
"Setup.exe" /S
echo del /q /s "C:\ProgramData\Antenna Magus\ApplicationSettings.xml" >"C:\ProgramData\Antenna Magus\Antenna Magus.bat"
echo start /d "C:\Program Files\Antenna Magus\" AntennaMagus.exe >>"C:\ProgramData\Antenna Magus\Antenna Magus.bat"
echo ^<?xml version="1.0" encoding="utf-8"?^> >"C:\ProgramData\Antenna Magus\ApplicationSettings.xml"
echo ^<ApplicationSettings Version="1" ProductVersion="11.0.0.5900"^> >>"C:\ProgramData\Antenna Magus\ApplicationSettings.xml"
echo   ^<Licensing Mechanism="NodeLocked" IsAutomaticLicenceUpdatesEnabled="true"^> >>"C:\ProgramData\Antenna Magus\ApplicationSettings.xml"
echo     ^<NodeLocked Key="5463-7212-0572-6302-7551" /^> >>"C:\ProgramData\Antenna Magus\ApplicationSettings.xml"
echo   ^</Licensing^> >>"C:\ProgramData\Antenna Magus\ApplicationSettings.xml"
echo ^</ApplicationSettings^> >>"C:\ProgramData\Antenna Magus\ApplicationSettings.xml"
echo 5463-7212-0572-6302-7551>>"C:\ProgramData\Antenna Magus\secmagus.dat