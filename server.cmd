cd /d %~dp0
if x%instpath%==x call %~d0\Start run hexo s
echo %errorlevel%
pause