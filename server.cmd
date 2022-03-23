cd /d %~dp0
if x%instpath%==x call %~d0\Start.cmd run hexo s
echo %errorlevel%
pause