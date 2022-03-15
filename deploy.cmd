if x%instpath%==x call %~d0\Start.cmd initenv
cd /d %~dp0
setlocal enabledelayedexpansion
path
pause&call git.cmd add .&echo !errorlevel!
pause&call git.cmd commit&echo !errorlevel!
pause&call git.cmd push&echo !errorlevel!
pause