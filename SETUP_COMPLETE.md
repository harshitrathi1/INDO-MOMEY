# Indo Money APK - Complete Setup Guide ✅

## 🎯 Full Setup (Windows, Mac, Linux के लिए)

---

## Step 1️⃣: Java SDK Download और Install करें

### **Windows के लिए:**

1. **Java Download करें:**
   - Link: https://www.oracle.com/java/technologies/downloads/
   - "JDK 11" या "JDK 17" select करें
   - Windows x64 installer download करें

2. **Installation:**
   - Downloaded file को double-click करें
   - "Next" और "Finish" दबाते रहें
   - Default location में install करें: `C:\Program Files\Java\jdk-17`

3. **Environment Variable Set करें:**
   - Windows Search में "Environment Variables" type करें
   - "Edit the system environment variables" खोलें
   - "Environment Variables" button दबाएं
   - "New" दबाएं (System variables section में)
   - Variable name: `JAVA_HOME`
   - Variable value: `C:\Program Files\Java\jdk-17`
   - OK दबाएं

4. **Verification करें:**
```bash
java -version
javac -version
```

---

### **Mac के लिए:**

```bash
# Homebrew से install करें
brew tap adoptopenjdk/openjdk
brew install adoptopenjdk11

# या Terminal में directly:
/usr/libexec/java_home -V
```

---

### **Linux के लिए:**

```bash
# Ubuntu/Debian
sudo apt-get update
sudo apt-get install openjdk-11-jdk

# या OpenJDK 17
sudo apt-get install openjdk-17-jdk

# Verify करें
java -version
```

---

## Step 2️⃣: Android SDK Download और Setup करें

### **सभी OS के लिए:**

1. **Android Studio Download करें:**
   - Link: https://developer.android.com/studio
   - अपने OS के लिए download करें

2. **Installation करें:**
   - Downloaded file को open करें
   - "Next" दबाते रहें
   - "Android SDK" checkbox selected रखें

3. **Environment Variable Set करें:**

**Windows:**
```
ANDROID_HOME = C:\Users\YourUsername\AppData\Local\Android\Sdk
PATH में add करें: %ANDROID_HOME%\tools;%ANDROID_HOME%\platform-tools
```

**Mac/Linux:**
```bash
echo 'export ANDROID_HOME=$HOME/Android/Sdk' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.bashrc
source ~/.bashrc
```

---

## Step 3️⃣: Node.js और npm Install करें

### **सभी OS के लिए:**

1. Download करें: https://nodejs.org/ (LTS version)
2. Installer run करें
3. "Next" दबाते रहें, सब default रखें
4. Installation complete होने दें

**Verify करें:**
```bash
node -v
npm -v
```

---

## Step 4️⃣: Cordova Install करें

```bash
npm install -g cordova
npm install -g @ionic/cli

# Verify करें
cordova -v
```

---

## Step 5️⃣: Complete APK Build करें

### **अब आप अपने repository में जाएं:**

```bash
# Step 1: Repository clone करें
git clone https://github.com/harshitrathi1/INDO-MOMEY.git
cd INDO-MOMEY

# Step 2: सभी dependencies install करें
npm install

# Step 3: Android platform add करें
cordova platform add android

# Step 4: सभी plugins add करें
cordova plugin add cordova-plugin-whitelist
cordova plugin add cordova-plugin-statusbar
cordova plugin add cordova-plugin-device
cordova plugin add cordova-plugin-splashscreen

# Step 5: APK build करें (Debug version - 2-3 मिनट लगेंगे)
cordova build android

# Step 6: Release APK बनाएं (Signed APK - Play Store के लिए)
cordova build android --release
```

---

## 📦 APK File कहाँ मिलेगी?

### **Debug APK:**
```
platforms/android/app/build/outputs/apk/debug/app-debug.apk
```
- Immediately download करके phone में install कर सकते हैं
- Testing के लिए perfect है

### **Release APK (Signed):**
```
platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk
```
- Play Store में upload करने के लिए
- Security के साथ signed होता है

---

## 🚀 Phone में APK Install करें

### **Method 1: USB Cable से (सबसे आसान)**

```bash
# Phone को USB से computer से connect करें
# Phone में "USB Debugging" enable करें (Settings > Developer Options)

cordova run android
```

### **Method 2: APK File को Download करके**

1. APK file को desktop पर copy करें
2. USB cable से phone को connect करें
3. File Explorer में phone storage में APK paste करें
4. Phone में file manager खोलें
5. APK file को tap करें
6. "Install" दबाएं

---

## ⚠️ Common Errors और Solutions

### **Error 1: "Java not found"**
```bash
# Solution: Java properly installed है या नहीं check करें
java -version

# अगर काम नहीं करे:
# JAVA_HOME environment variable को फिर से set करें
```

### **Error 2: "Android SDK not found"**
```bash
# Solution: ANDROID_HOME set करें
# Windows में:
setx ANDROID_HOME "C:\Users\YourName\AppData\Local\Android\Sdk"

# Mac/Linux में:
export ANDROID_HOME=$HOME/Android/Sdk
```

### **Error 3: "Gradle build failed"**
```bash
# Solution: Clean करके फिर से build करें
cordova clean
cordova platform remove android
cordova platform add android
cordova build android
```

### **Error 4: Port already in use**
```bash
# Solution: adb को restart करें
adb kill-server
adb start-server
```

---

## 📊 Build Status Check करें

```bash
# Installation check करें
cordova requirements android

# अगर सब ✓ दिखे, तो सब install है!
```

---

## 🎉 Final Checklist

- ✅ Java SDK installed और JAVA_HOME set है
- ✅ Android SDK installed है
- ✅ Node.js और npm installed है
- ✅ Cordova installed है
- ✅ Repository clone किया है
- ✅ `npm install` complete हुआ है
- ✅ `cordova platform add android` successful हुआ
- ✅ `cordova build android` complete हुआ
- ✅ APK file download हुई है
- ✅ Phone में install हुआ है

---

## 📱 APK Ready है!

अब आपका **Indo Money APK** पूरी तरह तैयार है! 🎊

### Download करने के लिए:
- **GitHub से:** Repository > Releases section
- **Direct link:** `/platforms/android/app/build/outputs/apk/debug/app-debug.apk`

---

## 💡 Tips

1. **Faster builds के लिए:** `cordova build android --device` (phone को connect रखें)
2. **Logcat देखने के लिए:** `cordova run android --device -- --verbose`
3. **Clean build के लिए:** `cordova clean && cordova build android`

---

**🚀 Done! आपका APK पूरी तरह ready है!**

अगर कोई error आए, तो error message के साथ बताइएगा!
