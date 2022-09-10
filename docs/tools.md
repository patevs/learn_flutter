# Learn Flutter - Documentation

> Tools and Utilities.

---

* [`dartdoc`](https://github.com/dart-lang/dartdoc) API documentation tool for Dart.
* [`dart-code-metrics`](https://github.com/dart-code-checker/dart-code-metrics) Static analysis tool that helps you analyse and improve your code quality.
* [`flutter_launcher_icons`](https://github.com/fluttercommunity/flutter_launcher_icons) Simplifies the task of updating your Flutter app's launcher icon.
* [`flutter_native_splash`](https://github.com/jonbhanson/flutter_native_splash) Automatically generates native code for adding splash screens in Android and iOS. Customize with specific platform, background color and splash image.
* [`derry`](https://github.com/frencojobs/derry) A script manager for Dart.
* [`flutterfire_cli`](https://github.com/invertase/flutterfire_cli) CLI to help with using FlutterFire in your Flutter applications.
* [`hydro-sdk`](https://github.com/hydro-sdk/hydro-sdk) Author Flutter experiences in Typescript. No native bridge, no V8. Just Dart. From runtime to virtual machine.
* [`flutter_convenient_test`](https://github.com/fzyzcjy/flutter_convenient_test) Write and debug tests easily, with full action history, time travel, screenshots, rapid re-execution, video records, retryability, interactivity, isolation and more.

[](.)

* [DevTools](https://flutter.dev/docs/development/tools/devtools/overview)

  ```bash
  # Install with pub
  $ pub global activate devtools
  # Install with flutter
  $ flutter pub global activate devtools
  ```

  ```bash
  # Run with pub
  $ pub global run devtools   # If you have `pub` on your path.
  # Run with flutter
  $ flutter pub global run devtools   # If you have `flutter` on your path.
  ```

* [`junitreport`](https://pub.dev/packages/junitreport) Generate JUnit XML reports from dart test runs.

  ```bash
  # Install with pub.
  $ dart pub global activate junitreport
  # Run a single test file.
  $ dart test simple_test.dart --reporter json > example.jsonl
  # Generate Junit report.
  $ dart pub global run junitreport:tojunit --input example.jsonl --output TEST-report.xml
  # Generate junitreport only:
  $ dart test simple_test.dart --reporter json | tojunit
  # Run all Flutter test cases:
  $ flutter test --machine | tojunit
  ```

* [`fvm`](https://github.com/leoafarias/fvm) Flutter Version Management: A simple CLI to manage Flutter SDK versions.
* [`sidekick`](https://github.com/leoafarias/sidekick) A simple app to make Flutter development more delightful.
* [`flutter_device_preview`](https://github.com/aloisdeniel/flutter_device_preview) Approximate how your app looks and performs on another device.
* [`flutter_ume`](https://github.com/bytedance/flutter_ume) UME is an in-app debug kits platform for Flutter apps.
* [`debug_friend`](https://github.com/Frezyx/debug_friend) 🐛 Flutter debug helper widget with common and custom actions.

[](.)

* [`very_good_cli`](https://github.com/VeryGoodOpenSource/very_good_cli) A Very Good Command Line Interface for Dart.

  ```bash
  # Installation
  $ dart pub global activate very_good_cli
  ```

[](.)

* [`dpm`](https://github.com/rbcprolabs/dpm) 📦 Dart Package Manager.

  ```bash
  # Installation
  $ dart pub global activate dpm
  ```

[](.)

* [`color-studio`](https://github.com/bernaferrari/color-studio) It is too hard to build coherent and accessible themes with the right colors. This should help.
* [`monarch`](https://github.com/Dropsource/monarch) Monarch is a tool that makes building beautiful Flutter widgets a more pleasant and faster experience.
* [`FigmaToCode`](https://github.com/bernaferrari/FigmaToCode) Generate responsive pages and apps on HTML, Tailwind, Flutter and SwiftUI.
* [`assistant`](https://github.com/gridaco/assistant) Figma plugin that generates usable & readable Flutter code for production.
* [`flutter_ide`](https://github.com/Norbert515/flutter_ide) A visual editor for Flutter widgets.
* [`widgetbook`](https://github.com/widgetbook/widgetbook) A flutter package which helps developers cataloguing their widgets, testing them quickly on multiple devices and themes, and sharing them easily with designers and clients.
* [`dashbook`](https://github.com/bluefireteam/dashbook) Development tools to help you building UI on Flutter.

---
