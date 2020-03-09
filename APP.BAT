@IF "%1"=="1" GOTO:ON
@IF "%1"=="0" GOTO:OFF
@ECHO Options: 1 for ON and 0 for OFF
@GOTO:EOF

:ON
@ECHO ::::Lauch APP
@ADB shell am start -n games.wfs.anothereden/net.wrightflyer.toybox.AppActivity
@GOTO:EOF

:OFF
@ECHO ::::Close APP
@ADB shell killallrun.sh games.wfs.anothereden
@GOTO:EOF

:LIST
@ECHO List Files - Not implement
@GOTO:EOF
