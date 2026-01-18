import 'package:flutter/material.dart';
import 'package:smart_garage/core/l10n/app_localizations.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
