# Indo Money APK Build Guide

## Prerequisites

आपको APK बनाने के लिए निम्नलिखित install करने होंगे:

### 1. **Node.js और npm**
   - Download करें: https://nodejs.org/
   - Version: 14.x या उससे ऊपर

### 2. **Java Development Kit (JDK)**
   - Download करें: https://www.oracle.com/java/technologies/downloads/
   - या: `apt-get install openjdk-11-jdk` (Linux)

### 3. **Android SDK**
   - Download करें: https://developer.android.com/studio
   - फिर Android Studio से SDK install करें

### 4. **Cordova**
```bash
npm install -g cordova
```

---

## Step-by-Step: APK Build करने के लिए

### Step 1: Repository Clone करें
```bash
git clone https://github.com/harshitrathi1/INDO-MOMEY.git
cd INDO-MOMEY
```

### Step 2: Dependencies Install करें
```bash
npm install
```

### Step 3: Cordova Project Setup करें
```bash
cordova platform add android
cordova plugin add cordova-plugin-whitelist
cordova plugin add cordova-plugin-statusbar
cordova plugin add cordova-plugin-device
```

### Step 4: APK Build करें
```bash
cordova build android --release
```

अगर पहली बार है, तो यह सवाल पूछेगा:
- **Keystore Password** - एक मजबूत password चुनें (याद रखें!)
- **Key Password** - वही password दोहराएं

### Step 5: APK File Find करें

APK file यहाँ मिलेगी:
```
platforms/android/app/build/outputs/apk/release/app-release-signed.apk
```

---

## Quick Build Commands

### Debug APK (जल्दी बनाने के लिए)
```bash
cordova build android
cordova run android  # Phone में सीधे install करने के लिए
```

### Release APK (Play Store के लिए)
```bash
cordova build android --release
```

---

## अगर Error आए तो?

### Error 1: "Java not found"
```bash
# Java installation check करें
java -version
```

### Error 2: "Android SDK not found"
```bash
# Environment variables set करें (Windows के लिए)
set ANDROID_HOME=C:\Users\YourName\AppData\Local\Android\Sdk
set PATH=%PATH%;%ANDROID_HOME%\tools;%ANDROID_HOME%\platform-tools
```

### Error 3: "Gradle build failed"
```bash
cordova clean
cordova platform remove android
cordova platform add android
cordova build android
```

---

## APK Download करें (बिना Build किए)

अगर आप Build नहीं करना चाहते, तो:

1. **GitHub Releases** से download करें (जब available हो)
2. **Online APK Builders** use करें:
   - PhoneGap Build
   - Monaca
   - BuildApk.online

---

## Features

✅ UPI Payment Integration
✅ QR Code Generation
✅ Firebase Real-time Database
✅ Coin Balance Management
✅ Transaction History
✅ Multiple Game Support (FF Counter, HP Dabang)

---

## Support

अगर कोई समस्या हो तो GitHub Issues खोलें:
https://github.com/harshitrathi1/INDO-MOMEY/issues
