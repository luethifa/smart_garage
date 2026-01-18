import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:smart_garage/features/courtesy_cars/presentation/screens/courtesy_cars_screen.dart';
import 'package:smart_garage/features/home/presentation/screens/home_screen.dart';
import 'package:smart_garage/features/settings/presentation/screens/settings_screen.dart';

import 'package:smart_garage/shared/widgets/top_nav_bar.dart';

const List<Map<String, dynamic>> actionsOpt = [
  {'label': 'settings', 'icon': Icons.settings_rounded},
  {'label': 'logout', 'icon': Icons.logout_rounded},
];
final appRouter = GoRouter(
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
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: const Text('Smart garage'),

            actionsPadding: EdgeInsets.symmetric(horizontal: 20),
            actions: [
              PopupMenuButton<String>(
                onSelected: (v) {},
                itemBuilder: (BuildContext context) {
                  return actionsOpt.map((Map<String, dynamic> opt) {
                    return PopupMenuItem<String>(
                      value: opt['label'],
                      child: Row(
                        spacing: 5,
                        children: [Icon(opt['icon']), Text(opt['label'])],
                      ),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const TopNavBar(),
              ),
              Expanded(child: child),
            ],
          ),
        );
      },
      routes: [
        GoRoute(path: '/', builder: (context, state) => HomeScreen()),
        GoRoute(
          path: '/courtesy-cars',
          builder: (context, state) => CourtesyCarsScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => SettingsScreen(),
        ),
      ],
    ),
  ],
  redirect: (context, state) {},
);
