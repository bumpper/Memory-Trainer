@echo off
echo ========================================
echo Mnemonics - Quick Development Script
echo ========================================
echo.
echo This script will start the development server.
echo.
echo Prerequisites:
echo - Rust installed (rustc --version)
echo - Node.js installed (node --version)
echo - Dependencies installed (npm install)
echo.
echo The application window will open automatically.
echo Changes to HTML/CSS/JS files will auto-reload.
echo.
echo Press Ctrl+C to stop the development server.
echo.
pause
echo.
echo Starting development server...
echo.
npm run dev
