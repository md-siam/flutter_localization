import 'package:flutter/material.dart';
import 'package:flutter_localization/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale = L10n.all[0];

  Locale get locale => _locale!;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}
