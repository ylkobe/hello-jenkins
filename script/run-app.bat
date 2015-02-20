cd c:\sftp_home
.\node_modules\.bin\forever list |findstr /C:"No forever"
IF %ERRORLEVEL% NEQ 0 (
	.\node_modules\.bin\forever restartall
) ELSE (
.\node_modules\.bin\forever start app.js -m 1
) 

