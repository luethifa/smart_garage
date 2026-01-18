import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_garage/core/providers/locale_provider/locale_provider.dart';
import 'package:smart_garage/core/router/localized_routes.dart';

class LanguageSwitcher extends ConsumerWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(localeControllerProvider);

    return DropdownButton<Locale>(
      value: currentLocale,
      onChanged: (locale) {
        if (locale == null) return;

        final router = GoRouter.of(context);
        final currentPath = GoRouterState.of(context).uri.path;

        final routeKey = LocalizedRoutes.getRouteKey(currentPath);

        ref.read(localeControllerProvider.notifier).setLocale(locale);

        if (routeKey != null) {
          final newPath = LocalizedRoutes.getPath(
            routeKey,
            locale.languageCode,
          );
          router.go(newPath);
        }
      },
      items: supportedLocales
          .map(
            (l) => DropdownMenuItem(
              value: l,
              child: Text(l.languageCode.toUpperCase()),
            ),
          )
          .toList(),
    );
  }
}
