import 'package:flutter/cupertino.dart';
import 'package:loaclization_in_cubit/translations/app_string.dart';
import 'package:loaclization_in_cubit/translations/laungage/ar_du.dart';
import 'package:loaclization_in_cubit/translations/laungage/en_us.dart';
import 'package:loaclization_in_cubit/translations/laungage/hi_in.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppString> {
  @override
  bool isSupported(Locale locale) =>
      ["en", "hi", "ar"].contains(locale.languageCode);

  @override
  Future<AppString> load(Locale locale) async {
    switch (locale.languageCode) {
      case "en":
        return EnUs();
      case "hi":
        return HnIN();
      case "ar":
        return ArDu();
      default:
        return EnUs();
    }
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppString> old) => false;
}
