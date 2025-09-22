@echo off
REM Flutter Release Build Script
REM Usage: build_release.bat [build_number]
REM Example: build_release.bat 20250922
REM Note: APK will be created in build\app\outputs\flutter-apk\app-release.apk

setlocal enabledelayedexpansion

if "%1"=="" (
    echo ERROR: Build number required
    echo Usage: build_release.bat [build_number]
    echo Example: build_release.bat 20250922
    exit /b 1
)

set BUILD_NUMBER=%1

REM Extract version from pubspec.yaml
for /f "tokens=2 delims=: " %%a in ('findstr "^version:" pubspec.yaml') do set VERSION=%%a
REM Remove spaces and carriage returns
set VERSION=%VERSION: =%
set VERSION=%VERSION:
=%

if "%VERSION%"=="" (
    echo ERROR: Could not extract version from pubspec.yaml
    exit /b 1
)

echo Building Meme Sound App
echo Version: %VERSION%
echo Build Number: %BUILD_NUMBER%
echo.

echo [1/3] Cleaning...
call flutter clean >nul 2>&1

echo [2/3] Getting dependencies...
call flutter pub get >nul 2>&1

echo [3/3] Building release APK...
call flutter build apk --release --build-number=%BUILD_NUMBER%

if %errorlevel% neq 0 (
    echo.
    echo BUILD FAILED
    exit /b 1
)

REM Verify APK exists
if not exist "build\app\outputs\flutter-apk\app-release.apk" (
    echo ERROR: APK not found
    exit /b 1
)

REM Get file size
for %%A in ("build\app\outputs\flutter-apk\app-release.apk") do set APK_SIZE=%%~zA

echo.
echo ================================
echo BUILD COMPLETED SUCCESSFULLY
echo ================================
echo Version: %VERSION%
echo Build Number: %BUILD_NUMBER%
echo APK: build\app\outputs\flutter-apk\app-release.apk
echo Size: %APK_SIZE% bytes
echo ================================
echo.
echo APK ready for distribution at: build\app\outputs\flutter-apk\app-release.apk