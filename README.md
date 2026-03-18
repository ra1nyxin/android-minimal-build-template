# Android Minimal Build Template

This is a minimalist Android application skeleton designed for automated build environments and low-level system testing. It eliminates redundant boilerplate and IDE-specific configurations, focusing purely on the core Gradle build chain.

---

## Technical Specifications

* Build System: Gradle 8.5 (Kotlin DSL)
* Android Gradle Plugin (AGP): 8.2.2
* Minimum Java Version: JDK 17
* Compile SDK: 36 (Backward compatible to 34)
* Target SDK: 36
* Min SDK: 29 (Android 10)
* Architecture: AppCompat + XML Layout (Legacy Stability)

---

## Directory Structure

* /app/src/main/java - Core logic (MainActivity.kt)
* /app/src/main/res - Minimal resources (Layout & Strings)
* /gradle/ - Gradle wrapper binaries
* /local.properties - Local SDK path configuration
* /gradle.properties - AndroidX & Build flags
* /set_path_clean_assembleDebug.bat - Windows automation script

---

## Quick Start (Windows CMD)

1. Configure SDK Path:
   Create a 'local.properties' file in the root directory and add your Android SDK path:
   sdk.dir=D:/Your/Android/Sdk

2. Initialize Environment:
   Ensure JAVA_HOME points to JDK 17+.

3. Build APK:
   Run the provided automation script:
   > set_path_clean_assembleDebug.bat

   Or execute manually:
   > .\gradlew.bat clean assembleDebug

4. Output Path:
   The generated APK will be located at:
   \app\build\outputs\apk\debug\app-debug.apk

---

## Key Features

* Zero IDE dependency: Can be built entirely via Command Line Interface (CLI).
* AndroidX Enabled: Fully compatible with modern Jetpack libraries.
* Headless Ready: Optimized for CI/CD pipelines and automated security auditing.
* Minimal Footprint: Stripped of icons and non-essential assets to reduce linkage overhead.

---

## License

MIT License - Feel free to use this for any research or production scaffolding.
