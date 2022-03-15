if x%instpath%==x call %~d0\Start initenv
cd /d %~dp0
setlocal enabledelayedexpansion
pause&hexo s&echo !errorlevel!
pause