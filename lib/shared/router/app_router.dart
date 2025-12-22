import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_garage/features/calendar/presentation/screens/calendar_page.dart';
import 'package:smart_garage/features/home/presentation/screens/home_page.dart';

import 'router_transition.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  // final authenticationController = ref.watch(authControllerProvider);

  return GoRouter(
    initialLocation: '/home',
    // refreshListenable: authenticationController,
    // redirect: (context, state) {
    //   final isLoggedIn = authenticationController.user != null;
    //   final goingToLogin = state.fullPath == '/auth/sign-in';
    //   final goingToSignUp = state.fullPath == '/auth/sign-up';

    //   if (!isLoggedIn && (!goingToSignUp && !goingToLogin)) {
    //     return '/auth';
    //   }
    //   return null;
    // },
    routes: [
      GoRoute(
        path: '/calendar',
        builder: (context, state) => const CalendarPage(),
      ),
      GoRoute(path: '/home', builder: (context, state) => const HomePage()),
    ],
  );
});
