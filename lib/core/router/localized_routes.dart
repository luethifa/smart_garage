class LocalizedRoutes {
  static const Map<String, Map<String, String>> _routes = {
    'home': {'en': '/', 'it': '/', 'de': '/', 'fr': '/'},
    'courtesy-cars': {
      'en': '/courtesy-cars',
      'it': '/auto-di-cortesia',
      'de': '/hoeflichkeitswagen',
      'fr': '/voitures-de-courtoisie',
    },
    'settings': {
      'en': '/settings',
      'it': '/impostazioni',
      'de': '/einstellungen',
      'fr': '/parametres',
    },
  };

  /// Get localized path for a route key
  static String getPath(String routeKey, String locale) {
    return _routes[routeKey]?[locale] ?? _routes[routeKey]?['it'] ?? '/';
  }

  /// Get route key from any localized path
  static String? getRouteKey(String path) {
    for (final entry in _routes.entries) {
      for (final localePath in entry.value.values) {
        if (localePath == path || path.startsWith('$localePath/')) {
          return entry.key;
        }
      }
    }
    return null;
  }

  /// Check if path matches any locale version of a route
  static bool matchesRoute(String path, String routeKey) {
    final routes = _routes[routeKey];
    if (routes == null) return false;

    return routes.values.any((p) => path == p || path.startsWith('$p/'));
  }

  /// Get all path variants for a route
  static List<String> getAllPaths(String routeKey) {
    return _routes[routeKey]?.values.toList() ?? [];
  }
}
