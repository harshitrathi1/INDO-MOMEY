# Java SDK Installation - Complete Guide

## 🪟 Windows Installation

### Step 1: Download Java JDK
1. Go to: https://www.oracle.com/java/technologies/downloads/
2. Click on "JDK 17" (या JDK 21 - नया version)
3. Select "Windows x64 Installer" (.exe file)
4. File download करें (~180 MB)

### Step 2: Run Installer
1. Downloaded file को double-click करें
2. "User Account Control" पूछे तो "Yes" दबाएं
3. Welcome screen दिखे तो "Next" दबाएं
4. Installation folder (default ठीक है): 
   ```
   C:\Program Files\Java\jdk-17.x.x
   ```
5. "Next" दबाते रहें
6. Installation complete होने दें (~1-2 मिनट)
7. "Finish" दबाएं

### Step 3: Set JAVA_HOME Environment Variable

#### Method 1: GUI से (आसान)

1. **Windows Search खोलें** (Windows key दबाएं)
2. Type करें: `environment variables`
3. "Edit the system environment variables" क्लिक करें
4. "Environment Variables" button दबाएं (नीचे दाईं ओर)
5. "System variables" section में "New" button दबाएं
6. यह fill करें:
   ```
   Variable name: JAVA_HOME
   Variable value: C:\Program Files\Java\jdk-17.x.x
   ```
7. "OK" दबाएं
8. Path में भी add करें:
   - "Path" को select करके "Edit" दबाएं
   - "New" दबाएं
   - यह add करें:
     ```
     C:\Program Files\Java\jdk-17.x.x\bin
     ```
   - "OK" दबाएं

#### Method 2: Command Prompt से (Advanced)

```bash
# Admin mode में Command Prompt खोलें
setx JAVA_HOME "C:\Program Files\Java\jdk-17.x.x"
setx PATH "%PATH%;C:\Program Files\Java\jdk-17.x.x\bin"

# फिर Command Prompt को close करके फिर से खोलें
```

### Step 4: Verify Installation

**Command Prompt खोलें और यह type करें:**

```bash
java -version
```

**Output ऐसा दिखेगा:**
```
java version "17.x.x" 2024-xx-xx LTS
Java(TM) SE Runtime Environment
Java HotSpot(TM) 64-Bit Server VM
```

अगर यह दिखे तो ✅ सफल!

---

## 🍎 Mac Installation

### Step 1: Homebrew से Install करें (सबसे आसान)

```bash
# Homebrew install करें (अगर नहीं है)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Java install करें
brew install openjdk@17

# या latest version
brew install openjdk
```

### Step 2: Environment Variable Set करें

```bash
# Terminal खोलें और यह run करें:
echo 'export JAVA_HOME=$(/usr/libexec/java_home -v 17)' >> ~/.zshrc
source ~/.zshrc
```

### Step 3: Verify करें

```bash
java -version
echo $JAVA_HOME
```

---

## 🐧 Linux Installation

### Ubuntu/Debian

```bash
# Update करें
sudo apt-get update

# OpenJDK 11 या 17 install करें
sudo apt-get install openjdk-17-jdk

# या Oracle JDK
sudo add-apt-repository ppa:linuxuprising/java
sudo apt-get update
sudo apt-get install oracle-java17-installer
```

### Verify करें

```bash
java -version
javac -version
echo $JAVA_HOME
```

### Environment Variable Set करें

```bash
# ~/.bashrc में add करें
echo 'export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64' >> ~/.bashrc
source ~/.bashrc
```

### Fedora/RHEL

```bash
sudo dnf install java-17-openjdk java-17-openjdk-devel
```

---

## ✅ Verification Steps

### सभी OS के लिए:

```bash
# Test 1: Java version
java -version

# Test 2: Compiler
javac -version

# Test 3: JAVA_HOME
echo %JAVA_HOME%        # Windows
echo $JAVA_HOME         # Mac/Linux

# Test 4: Simple compile करें
echo 'public class Test { public static void main(String[] args) { System.out.println("Java Works!"); } }' > Test.java
javac Test.java
java Test
```

**सब "✅" आए तो Java perfectly installed है!**

---

## ⚠️ Common Issues

### Issue 1: "Java command not found"

**Solution:**
- Java properly install नहीं हुआ है
- JAVA_HOME set नहीं है
- Command Prompt/Terminal को restart करें

### Issue 2: "Multiple Java Versions"

**Check करें:**
```bash
# Windows
java -version

# Mac/Linux
/usr/libexec/java_home -V
```

**Solution:** Latest version को path में रखें

### Issue 3: "JAVA_HOME not recognized"

**Windows में:**
```bash
# Admin Command Prompt में
setx JAVA_HOME "C:\Program Files\Java\jdk-17.x.x"
```

**फिर Command Prompt को close करके restart करें**

---

## 🚀 अब अगला Step

Java install होने के बाद:

1. Android SDK install करें
2. Node.js install करें
3. Cordova install करें
4. APK build करें

```bash
# सब कुछ एक साथ
npm install -g cordova
cordova platform add android
cordova build android
```

---

## 📞 Help

अगर Problem हो तो:

1. Error message को पूरा copy करें
2. GitHub Issues में post करें: https://github.com/harshitrathi1/INDO-MOMEY/issues
3. या Google में error search करें

**✅ Happy Building! 🚀**
