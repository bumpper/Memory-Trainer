@echo off
echo ========================================
echo Mnemonics - Quick Build Script
echo ========================================
echo.
echo This script will build the Mnemonics application.
echo.
echo Prerequisites:
echo - Rust installed (rustc --version)
echo - Node.js installed (node --version)
echo - Dependencies installed (npm install)
echo.
pause
echo.
echo Starting build process...
echo.
npm run build
echo.
echo ========================================
echo Build Complete!
echo ========================================
echo.
echo Installers can be found in:
echo src-tauri\target\release\bundle\
echo.
pause
