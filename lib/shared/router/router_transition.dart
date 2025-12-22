import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage<T> buildSlideTransitionPage<T>({
  required LocalKey key,
  required Widget child,
  Offset beginOffset = const Offset(1.0, 0.0),
}) {
  return CustomTransitionPage<T>(
    key: key,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.ease;
      final tween = Tween(
        begin: beginOffset,
        end: Offset.zero,
      ).chain(CurveTween(curve: curve));
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}
