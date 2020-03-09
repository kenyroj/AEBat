@IF "%1"=="1" GOTO:ON
@IF "%1"=="0" GOTO:OFF
@ECHO Options: 1 for ON and 0 for OFF
@GOTO:EOF

:ON
@ECHO ::::Turn ON WIFI
@ADB shell svc wifi enable
@GOTO:EOF

:OFF
@ECHO ::::Turn OFF WIFI
@ADB shell svc wifi disable
@GOTO:EOF

:LIST
@ECHO List Files - Not implement
@GOTO:EOF
