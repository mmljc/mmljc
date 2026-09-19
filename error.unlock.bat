@ECHO OFF

:PWD
TITLE 神秘文件
SET /A A=%A%+1
ECHO Made by mmljc
ECHO QQ号：3780504066
SET /P PWD=请验证密码:
IF /I "%PWD%"=="Password" GOTO MAIN

ECHO 错了 %A% 次了！再试一次
GOTO PWD

:MAIN
ECHO 正确！
taskkill /f /im GATESRV.exe /t
taskkill /f /im MasterHelper.exe /t
Sc stop tdnetfilter
sc stop STUDSRV
pause