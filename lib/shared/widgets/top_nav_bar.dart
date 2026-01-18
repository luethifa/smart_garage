import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_garage/core/extensions/build_context_extensions.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      mainAxisAlignment: .center,
      children: [
        TextButton.icon(
          onPressed: () => context.go('/'),
          label: Text(context.l10n.menuHome),
          icon: Icon(Icons.home_rounded),
        ),
        TextButton.icon(
          onPressed: () => context.go('/courtesy-cars'),
          label: Text(context.l10n.menuCourtesyCars),
          icon: Icon(Icons.car_rental_rounded),
        ),
      ],
    );
  }
}
