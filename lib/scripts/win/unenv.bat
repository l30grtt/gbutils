@ECHO OFF

REM remove user environment variables
REG DELETE "HKCU\Environment" /F /V "GIT_BASH_CMD"
REG DELETE "HKCU\Environment" /F /V "GIT_BASH_BIN"
REG DELETE "HKCU\Environment" /F /V "NVM_HOME"
REG DELETE "HKCU\Environment" /F /V "NVM_SYMLINK"
REG DELETE "HKCU\Environment" /F /V "JAVA_HOME"

REM remove system environment variables (needs elevation)
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /F /V "GIT_BASH_CMD"
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /F /V "GIT_BASH_BIN"
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /F /V "NVM_HOME"
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /F /V "NVM_SYMLINK"
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /F /V "JAVA_HOME"

PAUSE
