@ECHO OFF

SET GBUTILS_SNAPSHOTS=%HOMEDRIVE%%HOMEPATH%\.gbutils\snapshots
SET USER_PATH_SS=%GBUTILS_SNAPSHOTS%\user_path.txt
SET SYSTEM_PATH_SS=%GBUTILS_SNAPSHOTS%\system_path.txt

REM Restore user path
SET /P USER_PATH_SS_CONTENT=<%USER_PATH_SS%
FOR /F "skip=2 tokens=2,*" %%A IN ('REG QUERY "HKCU\Environment" /v PATH 2^>nul') DO (
  SETX PATH "%USER_PATH_SS_CONTENT%"
)

REM Restore system path
SET /P SYSTEM_PATH_SS_CONTENT=<%SYSTEM_PATH_SS%
FOR /F "skip=2 tokens=2,*" %%A IN ('REG QUERY "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v PATH 2^>nul') DO (
  SETX /M PATH "%SYSTEM_PATH_SS_CONTENT%"
)
