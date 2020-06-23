@echo off
echo -------------------------%DATE% %TIME%------------------------- >> log
for /R %%s in (*.lastUpdated) do (
	del "%%s"
	echo delete %%s
	echo %%s >> log
)

for /f "delims=" %%a in ('dir /ad /b /s E:\repository^|sort /r') do (
   rd "%%a">nul 2>nul &&echo delete "%%a" success
)
pause
