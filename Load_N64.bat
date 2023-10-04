@echo off
for %%e in (SRA EEP FLA) do (
xcopy /s/y "Drive Letter To Your Joey 64":\*.%%e "Path To Your Joey Auto Loader Folder"\Joey_64_Auto_Loader\temp_saves
)
"Path To Your Joey Auto Loader Folder"\Joey_64_Auto_Loader\Save_Convert.exe --input-dir "Path To Your Joey Auto Loader Folder"\Joey_64_Auto_Loader\temp_saves
xcopy /s/y "Path To Your Joey Auto Loader Folder"\Joey_64_Auto_Loader\temp_saves\*.SRM "Path To Your Retroarch Directory"\saves
for %%d in (SRA EEP FLA SRM MPK) do (
del "Path To Your Joey Auto Loader Folder"\Joey_64_Auto_Loader\temp_saves\*.%%d
)
for /r "Drive Letter To Your Joey 64":\ %%i IN (*.Z64) DO (
retroarch -L "Path To Your Retroarch Directory"\cores\mupen64plus_next_libretro.dll %%i
)
for %%i in ("Drive Letter To Your Joey 64":\*.Z64) do set filename=%%~ni
set extension=.SRM
xcopy /s/y "Path To Your Retroarch Directory"\saves\%filename%%extension% "Path To Your Joey Auto Loader Folder"\Joey_64_Auto_Loader\temp_saves\
"Path To Your Joey Auto Loader Folder"\Joey_64_Auto_Loader\Save_Convert.exe --input-dir "Path To Your Joey Auto Loader Folder"\Joey_64_Auto_Loader\temp_saves
for %%e in (SRA EEP FLA) do (
xcopy /s/y "Path To Your Joey Auto Loader Folder"\Joey_64_Auto_Loader\temp_saves\*.%%e "Drive Letter To Your Joey 64":\
)
for %%d in (SRA EEP FLA SRM MPK) do (
del "Path To Your Joey Auto Loader Folder"\Joey_64_Auto_Loader\temp_saves\*.%%d
)