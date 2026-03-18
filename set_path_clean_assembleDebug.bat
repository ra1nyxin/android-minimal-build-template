@echo off
setlocal enabledelayedexpansion

set "JAVA_HOME=C:\Program Files\Java\jdk-17"
set "PATH=%JAVA_HOME%\bin;%PATH%"

echo [INFO] Environment synchronized.
echo [INFO] JAVA_HOME: %JAVA_HOME%
java -version
echo.

echo [PROCESS] Stopping existing Gradle Daemons to prevent lock...
call .\gradlew.bat --stop

echo [PROCESS] Starting Clean Build (Assemble Debug)...
call .\gradlew.bat clean assembleDebug --no-daemon

if %ERRORLEVEL% EQU 0 (
    echo.
    echo [SUCCESS] Build completed successfully.
    echo [PATH] APK: app\build\outputs\apk\debug\app-debug.apk
    
    start explorer.exe "app\build\outputs\apk\debug\"
) else (
    echo.
    echo [ERROR] Build failed with exit code %ERRORLEVEL%
)

pause
