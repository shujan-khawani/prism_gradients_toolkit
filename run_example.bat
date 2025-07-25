@echo off
echo 🌈 Prism Gradients Toolkit - Running Example App
echo.

echo 📁 Navigating to example directory...
cd example

echo 📦 Getting dependencies...
flutter pub get

echo 🚀 Running example app...
echo Connect your device and press any key to continue...
pause

flutter run

echo.
echo ✅ Example app session ended.
pause