#!/bin/bash

# Indo Money - Fully Automated Setup Script
# यह script सब कुछ automatically setup कर देगा!

echo "==========================================="
echo "🚀 Indo Money - Automatic Setup शुरू हो रहा है"
echo "==========================================="
echo ""

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

# Check operating system
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS="Linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="Mac"
elif [[ "$OSTYPE" == "msys" ]]; then
    OS="Windows"
else
    OS="Unknown"
fi

echo "Operating System: $OS"
echo ""

# 1. Check Java
echo "════════════════════════════════════════════"
echo "Step 1: Checking Java Installation..."
echo "════════════════════════════════════════════"
if command -v java &> /dev/null; then
    java_version=$(java -version 2>&1 | grep -oP 'version "\K[^"]*')
    print_status "Java installed: $java_version"
else
    print_error "Java नहीं मिला!"
    print_warning "Download करें: https://www.oracle.com/java/technologies/downloads/"
    exit 1
fi
echo ""

# 2. Check Node.js
echo "════════════════════════════════════════════"
echo "Step 2: Checking Node.js Installation..."
echo "════════════════════════════════════════════"
if command -v node &> /dev/null; then
    node_version=$(node -v)
    npm_version=$(npm -v)
    print_status "Node.js installed: $node_version"
    print_status "npm installed: $npm_version"
else
    print_error "Node.js नहीं मिला!"
    print_warning "Download करें: https://nodejs.org/"
    exit 1
fi
echo ""

# 3. Check/Install Cordova
echo "════════════════════════════════════════════"
echo "Step 3: Setting up Cordova..."
echo "════════════════════════════════════════════"
if command -v cordova &> /dev/null; then
    cordova_version=$(cordova -v)
    print_status "Cordova already installed: $cordova_version"
else
    print_warning "Installing Cordova globally..."
    npm install -g cordova
    print_status "Cordova installed successfully!"
fi
echo ""

# 4. Install NPM dependencies
echo "════════════════════════════════════════════"
echo "Step 4: Installing NPM Dependencies..."
echo "════════════════════════════════════════════"
print_warning "npm install चल रहा है (2-3 मिनट ले सकता है)..."
npm install
print_status "NPM dependencies installed!"
echo ""

# 5. Add Android Platform
echo "════════════════════════════════════════════"
echo "Step 5: Adding Android Platform..."
echo "════════════════════════════════════════════"
print_warning "Cordova Android platform add हो रहा है..."
cordova platform add android
print_status "Android platform added!"
echo ""

# 6. Add Plugins
echo "════════════════════════════════════════════"
echo "Step 6: Adding Required Plugins..."
echo "════════════════════════════════════════════"
cordova plugin add cordova-plugin-whitelist
cordova plugin add cordova-plugin-statusbar
cordova plugin add cordova-plugin-device
cordova plugin add cordova-plugin-splashscreen
print_status "All plugins added!"
echo ""

# 7. Check Requirements
echo "════════════════════════════════════════════"
echo "Step 7: Verifying Requirements..."
echo "════════════════════════════════════════════"
cordova requirements android
echo ""

# 8. Build APK
echo "════════════════════════════════════════════"
echo "Step 8: Building APK..."
echo "════════════════════════════════════════════"
print_warning "APK build शुरू हो रहा है (3-5 मिनट लगेंगे)..."
cordova build android

if [ $? -eq 0 ]; then
    print_status "APK build successful!"
else
    print_error "APK build failed!"
    exit 1
fi
echo ""

# 9. Find APK file
echo "════════════════════════════════════════════"
echo "✅ Setup Complete!"
echo "════════════════════════════════════════════"
echo ""

APK_DEBUG="platforms/android/app/build/outputs/apk/debug/app-debug.apk"
APK_RELEASE="platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk"

if [ -f "$APK_DEBUG" ]; then
    print_status "Debug APK ready!"
    echo "📱 Location: $APK_DEBUG"
    echo "📊 Size: $(ls -lh "$APK_DEBUG" | awk '{print $5}')"
    echo ""
fi

echo "🚀 Next Steps:"
echo "────────────────────────────────────────────"
echo "1️⃣  Phone को USB से connect करें"
echo "2️⃣  Phone में Developer Options > USB Debugging enable करें"
echo "3️⃣  यह command run करें:"
echo "   cordova run android"
echo ""
echo "📥 या manually install करें:"
echo "   adb install -r $APK_DEBUG"
echo ""
echo "════════════════════════════════════════════"
echo "🎉 आपका Indo Money APK तैयार है!"
echo "════════════════════════════════════════════"
