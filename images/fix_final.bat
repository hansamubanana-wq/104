@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

echo 6.jpg以降を5.jpg以降に繰り上げます
echo 最終的に1～241の連番になります
echo.
pause

echo リネーム中...
for /L %%i in (6,1,242) do (
    set /a newnum=%%i-1
    if exist %%i.jpg (
        echo %%i.jpg → !newnum!.jpg
        ren %%i.jpg !newnum!.jpg
    )
)

echo.
echo 完了！
echo 1.jpg から 241.jpg まで連番になりました
pause