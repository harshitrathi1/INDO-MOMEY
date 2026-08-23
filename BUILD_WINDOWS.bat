@echo off
REM Indo Money - Windows Build Script

echo.
echo ========================================
echo Indo Money - APK Build शुरू हो रहा है
echo ========================================
echo.

REM Check Java
echo [1/7] Java check हो रहा है...
java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Java नहीं मिला! Download करें:
    echo https://www.oracle.com/java/technologies/downloads/
    pause
    exit /b 1
)
echo ✅ Java installed है

REM Check Android SDK
echo.
echo [2/7] Android SDK check हो रहा है...
if not defined ANDROID_HOME (
    echo ❌ ANDROID_HOME environment variable set नहीं है!
    echo Please set करें: Control Panel > Environment Variables
    pause
    exit /b 1
)
echo ✅ Android SDK found at: %ANDROID_HOME%

REM Check Node.js
echo.
echo [3/7] Node.js check हो रहा है...
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js नहीं मिला! Download करें:
    echo https://nodejs.org/
    pause
    exit /b 1
)
for /f "tokens=*" %%i in ('node -v') do set NODE_VERSION=%%i
echo ✅ Node.js version: %NODE_VERSION%

REM Install Cordova
echo.
echo [4/7] Cordova install हो रहा है...
call npm install -g cordova >nul 2>&1

REM Install dependencies
echo.
echo [5/7] Dependencies install हो रहे हैं...
call npm install

REM Add Android platform
echo.
echo [6/7] Android platform add हो रहा है...
call cordova platform add android

REM Add plugins
echo.
echo Plugins install हो रहे हैं...
call cordova plugin add cordova-plugin-whitelist
call cordova plugin add cordova-plugin-statusbar
call cordova plugin add cordova-plugin-device

REM Build APK
echo.
echo [7/7] APK build हो रहा है (2-3 मिनट ले सकता है)...
echo.
call cordova build android

echo.
echo ========================================
echo ✅ Build Complete!
echo ========================================
echo.
echo 📁 APK File यहाँ मिलेगी:
echo    platforms\android\app\build\outputs\apk\debug\app-debug.apk
echo.
echo 🚀 Phone में install करने के लिए:
echo    cordova run android
echo.
echo ========================================
pause
