@Echo off
color 3
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%

cd /d c:\windows\tempor~1 && rd /s /q .\
cd /d c:\windows\temp && rd /s /q .\
cd /d c:\windows\tmp && rd /s /q .\
cd /d c:\windows\ff*.tmp && rd /s /q .\
cd /d c:\windows\history && rd /s /q .\
cd /d c:\windows\cookies && rd /s /q .\
cd /d c:\windows\recent && rd /s /q .\
cd /d c:\windows\spool\printers && rd /s /q .\
del c:\WIN386.SWP
pause