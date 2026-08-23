# Indo Money - Game Coin Hub APK 🎮💰

**indo money game deposit** - एक complete payment solution जो UPI, QR Code, और Firebase के साथ काम करता है।

---

## 📥 Download APK

### ✅ APK Ready है! Download करें:

**GitHub Release से Direct Download:**
https://github.com/harshitrathi1/INDO-MOMEY/releases

**या अपने Repository के folder से:**
- Debug APK: `platforms/android/app/build/outputs/apk/debug/app-debug.apk`
- Release APK: `platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk`

---

## 🚀 Quick Start

### **सबसे आसान तरीका (Automatic Setup):**

#### Windows के लिए:
```bash
# 1. Repository clone करें
git clone https://github.com/harshitrathi1/INDO-MOMEY.git
cd INDO-MOMEY

# 2. Batch script run करें
BUILD_WINDOWS.bat
```

#### Mac/Linux के लिए:
```bash
# 1. Repository clone करें
git clone https://github.com/harshitrathi1/INDO-MOMEY.git
cd INDO-MOMEY

# 2. Script को executable बनाएं
chmod +x AUTO_SETUP.sh
chmod +x QUICK_START.sh

# 3. Script run करें
./AUTO_SETUP.sh
```

---

## 📋 Full Setup Guide

### **Step-by-Step Installation:**

1. **[Java SDK Installation](./JAVA_INSTALL_GUIDE.md)** ☕
   - Windows, Mac, Linux के लिए complete guide
   - सभी environment variables setup

2. **[Complete Setup Guide](./SETUP_COMPLETE.md)** 🔧
   - Android SDK installation
   - Node.js और Cordova setup
   - APK build करना
   - Phone में install करना

3. **[APK Build Guide](./README-APK.md)** 📱
   - Build commands
   - Troubleshooting
   - Online builders

---

## 🎯 Features

✅ **UPI Payment Integration**
- QR Code generation
- Deep linking support
- Real-time payment verification

✅ **Firebase Real-time Database**
- Multi-user support
- Coin balance management
- Transaction history

✅ **Game Support**
- FF Counter (ffcounter.my.app)
- HP Dabang (hp.dabang)
- Easily expandable for more games

✅ **User Experience**
- Beautiful UI with Violet theme
- Real-time coin updates
- Transaction status tracking
- 6-minute QR expiry with countdown

---

## 🛠️ Tech Stack

- **Frontend:** HTML5, CSS3, JavaScript
- **Backend:** Firebase Realtime Database
- **Payment:** BharatPe UPI Integration
- **Mobile:** Cordova + Apache
- **Build:** Gradle, Node.js, npm

---

## 📱 How to Use

1. **App Open करें**
   - Target game/app select करें (FF Counter या HP Dabang)
   - Mobile number या username enter करें

2. **Deposit करें**
   - Amount enter करें (₹ में)
   - "Pay & Deposit Coins" button दबाएं
   - QR Code scan करें (या UPI app खोलें)

3. **Payment करें**
   - UPI से payment complete करें
   - UTR/Reference number copy करें

4. **Verify करें**
   - App में UTR paste करें
   - "Verify & Add Coins" button दबाएं
   - ✅ Coins आपके account में add हो जाएंगे!

---

## 🔒 Security

- ✅ Firebase authentication
- ✅ Payment verification system
- ✅ UTR validation
- ✅ Secure UPI integration

---

## 📊 Project Structure

```
INDO-MOMEY/
├── index.html              # Main app interface
├── verify.js               # Payment verification (Lambda function)
├── config.xml              # Cordova configuration
├── package.json            # Node.js dependencies
│
├── JAVA_INSTALL_GUIDE.md   # Java installation (all OS)
├── SETUP_COMPLETE.md       # Complete setup guide
├── README-APK.md           # APK build guide
├── AUTO_SETUP.sh           # Automated setup script
├── QUICK_START.sh          # Quick build script
├── BUILD_WINDOWS.bat       # Windows batch script
│
└── platforms/
    └── android/
        └── app/build/outputs/apk/
            ├── debug/
            │   └── app-debug.apk      # ← Download करें!
            └── release/
                └── app-release-unsigned.apk
```

---

## ⚙️ Build Commands

### Debug APK (तुरंत testing के लिए):
```bash
cordova build android
# File: platforms/android/app/build/outputs/apk/debug/app-debug.apk
```

### Release APK (Play Store के लिए):
```bash
cordova build android --release
# File: platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk
```

### Directly Phone में Install करें:
```bash
cordova run android
```

---

## 🐛 Troubleshooting

### "Java not found"
```bash
# Java को properly install करें
# और JAVA_HOME environment variable set करें
java -version
```

### "Android SDK not found"
```bash
# ANDROID_HOME को set करें
# फिर requirement check करें
cordova requirements android
```

### "Build failed"
```bash
# Clean करके restart करें
cordova clean
cordova build android
```

---

## 📞 Support

**Issues का सामना करें?**

1. [GitHub Issues](https://github.com/harshitrathi1/INDO-MOMEY/issues) खोलें
2. Complete error message share करें
3. अपना OS और Node version बताएं

---

## 📈 Future Updates

🔜 **Planned Features:**
- Google Pay integration
- Multiple payment gateways
- Push notifications
- Advanced analytics
- Admin dashboard

---

## 📝 License

MIT License - सब कुछ free है! 🎉

---

## 👨‍💻 Author

**Harshit Rathi**
- GitHub: [@harshitrathi1](https://github.com/harshitrathi1)
- Email: harshitrathi1@gmail.com

---

## 🎊 Ready to Download?

### ✅ सब कुछ Complete हो गया!

**अब आप:**
1. Repository clone करें
2. AUTO_SETUP.sh run करें
3. APK file download करें
4. Phone में install करें
5. Enjoy करें! 🎉

---

**Happy Coding! 🚀**
