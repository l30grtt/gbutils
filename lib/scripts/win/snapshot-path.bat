@ECHO OFF

SET GBUTILS_SNAPSHOTS=%HOMEDRIVE%%HOMEPATH%\.gbutils\snapshots
SET USER_PATH_SS=%GBUTILS_SNAPSHOTS%\user_path.txt
SET SYSTEM_PATH_SS=%GBUTILS_SNAPSHOTS%\system_path.txt

REM Snapshot user path
FOR /F "skip=2 tokens=2,*" %%A IN ('REG QUERY "HKCU\Environment" /v PATH 2^>nul') DO (
    (ECHO %%B) > %USER_PATH_SS%
)

REM Snapshot system path
FOR /F "skip=2 tokens=2,*" %%A IN ('REG QUERY "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v PATH 2^>nul') DO (
    (ECHO %%B) > %SYSTEM_PATH_SS%
)