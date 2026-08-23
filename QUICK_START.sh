#!/bin/bash

# Indo Money - Quick Build Script
# यह script आपके APK को automatically build करेगा

echo "🚀 Indo Money APK Build शुरू हो रहा है..."
echo "================================================"

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js installed नहीं है!"
    echo "Download करें: https://nodejs.org/"
    exit 1
fi

# Check if Cordova is installed
if ! command -v cordova &> /dev/null; then
    echo "📦 Cordova install हो रहा है..."
    npm install -g cordova
fi

echo "✅ Node.js version: $(node -v)"
echo "✅ npm version: $(npm -v)"
echo "✅ Cordova version: $(cordova -v)"

# Install dependencies
echo ""
echo "📦 Dependencies install हो रहे हैं..."
npm install

# Add Android platform
echo ""
echo "🤖 Android platform add हो रहा है..."
cordova platform add android

# Add plugins
echo ""
echo "🔌 Plugins install हो रहे हैं..."
cordova plugin add cordova-plugin-whitelist
cordova plugin add cordova-plugin-statusbar
cordova plugin add cordova-plugin-device
cordova plugin add cordova-plugin-splashscreen

# Check requirements
echo ""
echo "🔍 Requirements check हो रहा है..."
cordova requirements android

# Build APK
echo ""
echo "🔨 APK build हो रहा है (यह 2-3 मिनट ले सकता है)..."
cordova build android

echo ""
echo "================================================"
echo "✅ Build Complete!"
echo ""
echo "📱 APK File Location:"
echo "   Debug APK: platforms/android/app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "🚀 Phone में install करने के लिए:"
echo "   cordova run android"
echo ""
echo "================================================"
