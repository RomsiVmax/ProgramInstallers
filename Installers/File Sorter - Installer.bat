@echo off
color a


fltmc >nul 2>&1 || (


    echo Press any key to install the program! NOTE: You NEED an active internet connection and you NEED to click "Yes" on all warnings
    pause >nul
    cd C:/Program Files/PowerShell/7
    pwsh.exe -Command "Start-Process cmd -ArgumentList '/c ""%~f0""' -Verb RunAs
    goto install
)
goto install










:install
cls
echo Installing... Please click "Yes" on all warnings
C:/Windows/System32/timeout.exe /t 2 >nul
cls
cd C:\Program Files
mkdir "File Sorter"
cd File Sorter
mkdir "Backend"
cd Backend
C:\Windows\System32\curl.exe -L https://raw.githubusercontent.com/RomsiVmax/ProgramAssets/main/File%%20Sorter/AiO/FileSorterAiO.exe --output "FileSorterAiO.exe"
cd %USERPROFILE%
cd OneDrive
cd Desktop
C:\Windows\System32\curl.exe -L "https://raw.githubusercontent.com/RomsiVmax/ProgramAssets/main/File%%20Sorter/File%%20Sorter%%20AiO.lnk" --output "File Sorter AiO.lnk"
C:/Windows/System32/timeout.exe /t 2 >nul
cls
echo Installation complete! Press any key to exit the installer
pause >nul
