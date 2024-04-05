import 'package:flutter/material.dart';

abstract class AppString {
  static AppString of(BuildContext context) {
    return Localizations.of<AppString>(context, AppString)!;
  }
  String get appName;
  String get homeScreen;
  String get languageScreen;
  String get hindi;
  String get english;
  String get arabic;
  String get demoText1;
  String get demoText2;
  String get demoText3;
}
