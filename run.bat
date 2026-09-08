@echo off
title RPG Car Game
color 0A

echo ========================================
echo        RPG CAR GAME - LAUNCHER
echo ========================================
echo.

:: Go to the folder where this BAT file is located
cd /d "%~dp0"

echo Starting RPG Car Game...
echo.
echo Open in your browser:
echo http://localhost:3000
echo.
echo Press Ctrl+C to stop the server.
echo ========================================
echo.

:: Start the local server
npx serve .

pause