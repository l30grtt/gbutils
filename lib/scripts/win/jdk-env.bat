@ECHO OFF

REM JDK_PATH:
SET JAVA_HOME=C:\pocket\zulu11.58.23-ca-jdk11.0.16.1-win_x64

REM USER ENV:
SETX JAVA_HOME "%JAVA_HOME%"

FOR /F "skip=2 tokens=2,*" %%A IN ('REG QUERY "HKCU\Environment" /v PATH 2^>nul') DO (
  SETX PATH "%%JAVA_HOME%%\bin;%%B"
)

REM SYSTEM ENV:
SETX /M JAVA_HOME "%JAVA_HOME%"

FOR /F "skip=2 tokens=2,*" %%A IN ('REG QUERY "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v PATH 2^>nul') DO (
  SETX /M PATH "%%JAVA_HOME%%\bin;%%B"
)

POWERSHELL "echo \""JDK ENV SET\"""
POWERSHELL "echo JAVA_HOME=${env:JAVA_HOME}"
REM PAUSE