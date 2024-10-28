import 'package:flutter/material.dart';

class L10n {
  static final all = [const Locale('en'), const Locale('hi')];

  // static Map codes = {'en': 'English', 'fr': 'French'};
  // static Map hindiCodes = {'en': 'Anglais', 'fr': 'Français'};

  static String getLanguageName(String? code) {
    if (code == 'en') {
      return 'English';
    } else {
      return 'Hindi';
    }
  }
}
