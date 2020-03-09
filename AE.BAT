
@SET UID=u0_a38

@IF "%1"=="B" GOTO:BACKUP
@IF "%1"=="S" GOTO:BACKUP
@IF "%1"=="R" GOTO:RESTORE
@IF "%1"=="L" GOTO:LIST
@ECHO Options: R/B/S/L
@GOTO:EOF

:BACKUP
@ECHO ::::Backup Files
@RMDIR /Q /S ldb
@ADB pull /data/data/games.wfs.anothereden/files/ldb .
@GOTO:EOF

:RESTORE
@ECHO ::::Restore Files
@ADB shell rm -rf /data/data/games.wfs.anothereden/files/ldb
@ADB push ldb /data/data/games.wfs.anothereden/files/
@ADB shell chown -R %UID%:%UID% /data/data/games.wfs.anothereden/files/ldb
@GOTO:EOF

:LIST
@ECHO ::::List Files - Not implement
@GOTO:EOF
