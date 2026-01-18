import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_garage/core/l10n/app_localizations.dart';
import 'package:smart_garage/core/providers/locale_provider/locale_provider.dart';
import 'package:smart_garage/core/router/localized_routes.dart';

extension BuildContextExt on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

extension LocalizedNavigation on BuildContext {
  void goLocalized(
    WidgetRef ref,
    String routeKey, {
    Map<String, String>? params,
  }) {
    final locale = ref.read(localeControllerProvider).languageCode;

    var path = LocalizedRoutes.getPath(routeKey, locale);

    params?.forEach((k, v) {
      path = path.replaceAll(':$k', v);
    });

    GoRouter.of(this).go(path);
  }

  void goLocalizedRef(Ref ref, String routeKey, {Map<String, String>? params}) {
    final locale = ref.read(localeControllerProvider).languageCode;

    var path = LocalizedRoutes.getPath(routeKey, locale);

    params?.forEach((k, v) {
      path = path.replaceAll(':$k', v);
    });

    GoRouter.of(this).go(path);
  }

  void pushLocalized(Ref ref, String routeKey, {Map<String, String>? params}) {
    final locale = ref.read(localeControllerProvider).languageCode;

    var path = LocalizedRoutes.getPath(routeKey, locale);

    params?.forEach((k, v) {
      path = path.replaceAll(':$k', v);
    });

    GoRouter.of(this).push(path);
  }
}
