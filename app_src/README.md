# Dex2c Plus (Recovered Android Project)

## Project Overview
- **Application Name:** Dex2c Plus
- **Package Name:** `com.dex2c.plus`
- **Version:** 2.0.2 (versionCode 2027)
- **Target SDK:** 34 (Android 14)
- **Min SDK:** 21 (Android 5.0)
- **Compile SDK:** 34 / 36

---

## Architecture & Core Modules

### 1. Application Layer (`com.dex2c.plus`)
- **`MainActivity.java`**: Main application dashboard; APK selection, class listing with search/filter, build configuration trigger, and dynamic action buttons.
- **`ui/BuildActivity.java`**: Real-time compilation and execution terminal with glowing log view (`GlowConsoleTextView`).
- **`ui/SettingsActivity.java`**: Preference center for theme selection, NDK toolchain management, and default output directories.
- **`ui/AcknowledgementActivity.java`**: Open-source acknowledgements and third-party credits.
- **`ui/FileManagerDialog.java`**: Built-in file and directory picker with scoped storage handling.
- **`ui/TelegramProfileDialog.java`**: Community channel and developer profile dialog.

### 2. Core Translation & Native Engine (`com.dex2c.plus.engine`)
- **`Dex2CTranslator.java`**: Translates Dalvik bytecode opcodes into C/C++ JNI functions (`JNIEnv*`, registers, invoke instructions, object manipulation).
- **`DexRewriterEngine.java`**: Leverages `dexlib2` to strip converted method bodies, inject native method flags, add `System.loadLibrary` calls, and preserve class hierarchy.
- **`NdkCompiler.java`**: Configures, invokes, and orchestrates on-device Clang/LLVM toolchains to compile translated C/C++ source into `.so` shared libraries.
- **`FastZipModifier.java`**: High-performance zip manipulation bridge for packaging APKs, fixing fake encryption, and fast signature checks.
- **`ApkDexManager.java`**: Handles multidex processing, dex extraction, and packaging.

### 3. Pure Java Pipeline (Native .so Libraries Removed)
All 22 previously native JNI entry points in `libdex2cplus.so` have been reverse engineered via REA, decrypted, and implemented in 100% pure Java:
- `com.dex2c.plus.MainActivity.getNativeAbi`
- `com.dex2c.plus.MainActivity.openGithubRepoNative`
- `com.dex2c.plus.engine.NdkCompiler.getOnlineNdkUrlNative`
- `com.dex2c.plus.engine.FastZipModifier.*` (16 ZIP and file manipulation methods, SHA-256, AXML parsing)
- `com.dex2c.plus.ui.TelegramProfileDialog.*` (decrypted metadata and links)

The application is now architecture-independent and does not require native `.so` files to execute.

---

## How to Open & Build in Android Studio
1. Open **Android Studio** -> **File** -> **Open...**
2. Select the `jadx_project` folder.
3. Allow Gradle to sync.
4. Note on ViewBinding: `viewBinding true` is enabled in `app/build.gradle`. If Gradle reports duplicate class errors on `com.dex2c.plus.databinding.*`, remove the decompiled `databinding` folder in `src/main/java/com/dex2c/plus/databinding` so Android Studio generates them automatically from `res/layout/*.xml`.
