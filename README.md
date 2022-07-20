<img src="screenshots/badges/built-with-love.svg" height="28px"/>&nbsp;&nbsp;
<img src="screenshots/badges/flutter-dart.svg" height="28px" />&nbsp;&nbsp;
<a href="https://choosealicense.com/licenses/mit/" target="_blank"><img src="screenshots/badges/license-MIT.svg" height="28px" /></a>&nbsp;&nbsp;
<img src="screenshots/badges/Flutter-3.svg" height="28px" />&nbsp;&nbsp;
<img src="screenshots/badges/dart-null_safety-blue.svg" height="28px"/>

# Flutter Localization

<img align="right" src="screenshots/store_icons/playstore.png" height="190"></img>

This repo is for enabling localization in a flutter application. I am using an [YouTube](https://www.youtube.com/watch?v=Zw4KoorVxgg&t=20s) tutorial video for developing this application.

The official documentation for flutter localization can be found [here](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)

For language code visit: https://www.science.co.il/language/Codes.php

## App Demo

<p align="center"><img src="screenshots/gif/app_demo.gif"></p>

## File Pattern Inside The `lib` Folder

```
lib/
├── l10n/
│   ├── app_ar.arb
│   ├── app_bn.arb
│   ├── app_de.arb
│   ├── app_en.arb
│   ├── app_es.arb
│   ├── app_he.arb
│   ├── app_hi.arb
│   └── l10n.dart
├── page/
│   └── home_page.dart
├── provider/
│   └── locale_provider.dart
├── widget/
│   ├── language_picker_widget.dart
│   └── language_widget.dart
└── main.dart
```

## Location of Auto-Generated `localization` Files

<p align="center"><img src="screenshots/generated_files.png"></p>
