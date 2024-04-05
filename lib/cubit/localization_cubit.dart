import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<ChangeLocaleState> {
  LocalizationCubit()
      : super(ChangeLocaleState(
          locale: const Locale('en'),
        ));

  Future<void> getSavedLanguage() async {
    final saveLanguage = await getLocale();
    emit(
      ChangeLocaleState(locale: Locale(saveLanguage.languageCode)),
    );
  }

  Future<void> changeLanguage(String languageCode) async {
    final saveLanguage = await getLocale();
    if (saveLanguage.languageCode == languageCode) return;
    saveLocale(Locale(languageCode));
    emit(ChangeLocaleState(locale: Locale(languageCode)));
  }

  Future<void> saveLocale(Locale locale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('language', locale.languageCode);
  }

  Future<Locale> getLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String languageCode = prefs.getString('language') ?? 'en';
    return Locale(languageCode);
  }
}
