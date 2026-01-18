// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:smart_garage/core/extensions/build_context_extensions.dart';
// import 'package:smart_garage/core/providers/locale_provider/locale_provider.dart';
// import 'package:smart_garage/core/router/localized_routes.dart';

// import 'package:smart_garage/features/courtesy_cars/presentation/screens/courtesy_cars_screen.dart';
// import 'package:smart_garage/features/home/presentation/screens/home_screen.dart';
// import 'package:smart_garage/features/settings/presentation/screens/settings_screen.dart';

// import 'package:smart_garage/shared/widgets/top_nav_bar.dart';

// enum PopupMenuItems { settings, logout }

// class AppRouter {
//   static GoRouter router(LocaleNotifierProvider localeProvider) {
//     return GoRouter(
//       refreshListenable: localeProvider,
//       initialLocation: '/',
//       routes: [
//         GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
//         GoRoute(
//           path: '/courtesy-carrs',
//           builder: (context, state) => const CourtesyCarsScreen(),
//         ),
//       ],
//       // errorBuilder: (context, state) =>
//       //     NotFoundPage(path: state.uri.toString()),
//     );
//   }
// }

// // final appRouter = GoRouter(
// //   initialLocation: '/',
// //   routes: [
// //     ShellRoute(
// //       builder: (context, state, child) {
// //         List<Map<String, dynamic>> actionsOpt = [
// //           {
// //             'value': PopupMenuItems.settings,
// //             'label': context.l10n.menuSettings,
// //             'icon': Icons.settings_rounded,
// //           },
// //           {
// //             'value': PopupMenuItems.logout,
// //             'label': context.l10n.menuLogout,
// //             'icon': Icons.logout_rounded,
// //           },
// //         ];
// //         return Scaffold(
// //           appBar: AppBar(
// //             backgroundColor: Colors.blueAccent,
// //             title: const Text('Smart garage'),
// //             actionsPadding: EdgeInsets.symmetric(horizontal: 20),
// //             actions: [
// //               PopupMenuButton<PopupMenuItems>(
// //                 onSelected: (v) {
// //                   debugPrint('$v');
// //                   switch (v) {
// //                     case PopupMenuItems.settings:
// //                       context.push('/settings');
// //                       break;
// //                     case PopupMenuItems.logout:
// //                       context.push('/');
// //                       break;
// //                   }
// //                 },
// //                 itemBuilder: (BuildContext context) {
// //                   return actionsOpt.map((Map<String, dynamic> opt) {
// //                     return PopupMenuItem<PopupMenuItems>(
// //                       value: opt['value'],
// //                       child: Row(
// //                         spacing: 5,
// //                         children: [Icon(opt['icon']), Text(opt['label'])],
// //                       ),
// //                     );
// //                   }).toList();
// //                 },
// //               ),
// //             ],
// //           ),
// //           body: Column(
// //             children: [
// //               Container(
// //                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
// //                 child: const TopNavBar(),
// //               ),
// //               Expanded(child: child),
// //             ],
// //           ),
// //         );
// //       },
// //       routes: [
// //         ...LocalizedRoutes.getAllPaths('home').map(
// //           (path) => GoRoute(
// //             path: path,
// //             builder: (context, state) => const HomeScreen(),
// //           ),
// //         ),

// //         // Courtesy cars
// //         ...LocalizedRoutes.getAllPaths('courtesy-cars').map(
// //           (path) => GoRoute(
// //             path: path,
// //             builder: (context, state) => const CourtesyCarsScreen(),
// //           ),
// //         ),

// //         ...LocalizedRoutes.getAllPaths('settings').map(
// //           (path) => GoRoute(
// //             path: path,
// //             builder: (context, state) => const SettingsScreen(),
// //           ),
// //         ),
// //       ],
// //     ),
// //   ],
// // );
