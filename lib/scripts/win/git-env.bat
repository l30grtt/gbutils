@ECHO OFF

REM GIT_PATH:
SET GIT_BASH_CMD=C:\pocket\git\cmd
SET GIT_BASH_BIN=C:\pocket\git\bin

REM USER ENV:
SETX GIT_BASH_CMD "%GIT_BASH_CMD%"
SETX GIT_BASH_BIN "%GIT_BASH_BIN%"

FOR /F "skip=2 tokens=2,*" %%A IN ('REG QUERY "HKCU\Environment" /v PATH 2^>nul') DO (
  SETX PATH "%%GIT_BASH_CMD%%;%%GIT_BASH_BIN%%;%%B"
)

REM SYSTEM ENV:
SETX /M GIT_BASH_CMD "%GIT_BASH_CMD%"
SETX /M GIT_BASH_BIN "%GIT_BASH_BIN%"

FOR /F "skip=2 tokens=2,*" %%A IN ('REG QUERY "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v PATH 2^>nul') DO (
  SETX /M PATH "%%GIT_BASH_CMD%%;%%GIT_BASH_BIN%%;%%B"
)

POWERSHELL "echo \""GIT ENV SET\"""
POWERSHELL "echo GIT_BASH_CMD=${env:GIT_BASH_CMD}"
POWERSHELL "echo GIT_BASH_BIN=${env:GIT_BASH_BIN}"
REM PAUSE