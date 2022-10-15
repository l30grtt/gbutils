@ECHO OFF

REM NVM_PATH:
SET NVM_HOME=C:\pocket\nvm
SET NVM_SETTINGS=%NVM_HOME%\settings.txt
SET NVM_SYMLINK=C:\Program Files\nodejs

REM USER ENV:
SETX NVM_HOME "%NVM_HOME%"
SETX NVM_SYMLINK "%NVM_SYMLINK%"

FOR /F "skip=2 tokens=2,*" %%A IN ('REG QUERY "HKCU\Environment" /v PATH 2^>nul') DO (
  (ECHO %%B) > %NVM_HOME%\PATH.txt
  (ECHO %%B) > %NVM_HOME%\USER_PATH.txt
  SETX PATH "%%NVM_SYMLINK%%;%%NVM_HOME%%;%%B"
)

REM SYSTEM ENV:
SETX /M NVM_HOME "%NVM_HOME%"
SETX /M NVM_SYMLINK "%NVM_SYMLINK%"

FOR /F "skip=2 tokens=2,*" %%A IN ('REG QUERY "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v PATH 2^>nul') DO (
  (ECHO %%B) > %NVM_HOME%\SYSTEM_PATH.txt
  SETX /M PATH "%%NVM_SYMLINK%%;%%NVM_HOME%%;%%B"
)

REM Create nvm's settings.txt
IF EXIST "%SYSTEMDRIVE%\Program Files (x86)\" (
    SET SYS_ARCH=64
) ELSE (
    SET SYS_ARCH=32
)
(ECHO root: %NVM_HOME% && ECHO path: %NVM_SYMLINK% && ECHO arch: %SYS_ARCH% && ECHO proxy: none) > %NVM_SETTINGS%

POWERSHELL "echo \""NVM ENV SET\"""
POWERSHELL "echo NVM_HOME=${env:NVM_HOME}"
POWERSHELL "echo NVM_SETTINGS=${env:NVM_SETTINGS}"
POWERSHELL "echo NVM_SYMLINK=${env:NVM_SYMLINK}"
REM PAUSE