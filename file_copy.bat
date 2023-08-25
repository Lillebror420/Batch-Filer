@echo off
set "source_folder=path\to\source\folder"
set "destination_folder=path\to\destination\folder"

if not exist "%destination_folder%" mkdir "%destination_folder%"

for /r "%source_folder%" %%f in (*) do (
    copy "%%f" "%destination_folder%\"
    echo Copied "%%~nxf" to "%destination_folder%\"
)

pause
echo All files copied.
pause
