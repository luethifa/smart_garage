import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'core/l10n/app_localizations.dart';
import 'core/providers/locale_provider/locale_provider.dart';
import 'core/router/router_provider/router_provider.dart';

void main() {
  usePathUrlStrategy();
  runApp(ProviderScope(child: const SmartGarageApp()));
}

class SmartGarageApp extends ConsumerWidget {
  const SmartGarageApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeControllerProvider);
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      routerConfig: router,
      locale: locale,
      supportedLocales: supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      title: 'Smart garage',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      // routerConfig: appRouter,
    );
  }
}
