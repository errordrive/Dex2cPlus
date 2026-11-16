# Dex2c Plus v2.0.2

Dex2c Plus is an on-device Android tool designed to translate Dalvik bytecode (DEX) to C/C++ native code, rewrite class definitions with native JNI stubs, and orchestrate native compilation via Clang/LLVM toolchains.

## Project Structure
- **`apktool_project/`**: Complete decompiled smali sources, resources, layouts, and native libraries configured for automated cloud build and packaging.
- **`app_src/`**: Decompiled Java/Kotlin source tree and Android Studio Gradle project structure.
- **`.github/workflows/android-build.yml`**: Automated GitHub Actions cloud build pipeline building, aligning, signing, and releasing the APK.

## Features
- Convert classes and methods to native C/C++ implementations.
- Multi-architecture native support (`arm64-v8a`, `armeabi-v7a`, `x86`, `x86_64`).
- Fast zip modification, encryption sanitization, and signing verification.
- Beautiful UI with real-time compilation console (`GlowConsoleTextView`).
- Target SDK 34 (Android 14) / Compile SDK 36.

## Automated Cloud Build
This project includes GitHub Actions workflows that automatically build, align, sign (v1, v2, v3), and release `Dex2cPlus-v2.0.2.apk` on every push to `main`.
