@echo off
title 神秘文件
set "CORRECT_PWD=3780504066"
echo 此文件made by mmljc
echo QQ号：3780504066
echo.
echo 请验证密码继续
echo.
:RE
set /p "INPUT_PWD="
if "%INPUT_PWD%"=="%CORRECT_PWD%" (
echo 正在运行...
taskkill /f /im GATESRV.exe /t
taskkill /f /im MasterHelper.exe /t
Sc stop tdnetfilter
sc stop STUDSRV
echo 运行完成
) else (
echo 密码错误，请重试
goto RE
)
pause