# deeplink_demo_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

how it work

adb shell am start -W -a android.intent.action.VIEW -d "http://10.0.2.2:3000/red" -n com.example.deeplink_demo_mobile/.MainActivity

http://10.0.2.2:3000/red your domain

com.example.deeplink_demo_mobile your package name
