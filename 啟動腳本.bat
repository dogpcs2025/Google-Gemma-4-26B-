@echo off
chcp 65001 >nul
title SuperGemma4 26B 启动器

set PORT=8085

echo.
echo ==========================================
echo 启动 SuperGemma4 26B...
echo ==========================================
echo.

llama-server ^
-m models\supergemma4-26b-uncensored-fast-v2-Q4_K_M.gguf ^
-ngl 999 ^
-c 32768 ^
--host 127.0.0.1 ^
--port %PORT%

echo.
echo ==========================================
echo 浏览器打开：
echo http://127.0.0.1:%PORT%
echo ==========================================
echo.

pause
