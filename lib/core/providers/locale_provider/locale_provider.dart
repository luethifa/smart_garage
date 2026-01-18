import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleController extends _$LocaleController {
  static const _localeKey = 'app_locale';

  @override
  Locale build() {
    _load();
    return const Locale('it');
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_localeKey);
    if (code != null) {
      state = Locale(code);
    }
  }

  Future<void> setLocale(Locale locale) async {
    if (state == locale) return;
    state = locale;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);
  }
}

/// Lista supportata
const supportedLocales = [
  Locale('en'),
  Locale('it'),
  Locale('de'),
  Locale('fr'),
];
