import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum SlideDirection { left, right, up, down }

CustomTransitionPage<T> buildSlideTransitionPage<T>({
  required LocalKey key,
  required Widget child,
  SlideDirection direction = SlideDirection.right,
  Curve curve = Curves.easeOut,
}) {
  Offset getBeginOffset() {
    switch (direction) {
      case SlideDirection.left:
        return const Offset(-1, 0);
      case SlideDirection.right:
        return const Offset(1, 0);
      case SlideDirection.up:
        return const Offset(0, -1);
      case SlideDirection.down:
        return const Offset(0, 1);
    }
  }

  return CustomTransitionPage<T>(
    key: key,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final tween = Tween<Offset>(
        begin: getBeginOffset(),
        end: Offset.zero,
      ).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}
