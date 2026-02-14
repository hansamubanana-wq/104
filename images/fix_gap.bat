@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

echo 5.jpg以降を4.jpg以降に繰り上げます
echo 1,2,3はそのまま、4から243になります
echo.
pause

echo リネーム中...
for /L %%i in (243,-1,5) do (
    set /a newnum=%%i-1
    if exist %%i.jpg (
        echo %%i.jpg → !newnum!.jpg
        ren %%i.jpg !newnum!.jpg
    )
)

echo.
echo 完了！
echo 1.jpg, 2.jpg, 3.jpg, 4.jpg, 5.jpg ... 242.jpg になりました
pause