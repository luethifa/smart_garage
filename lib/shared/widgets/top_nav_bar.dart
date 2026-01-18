import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/extensions/build_context_extensions.dart';

class TopNavBar extends ConsumerWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      spacing: 20,
      mainAxisAlignment: .center,
      children: [
        TextButton.icon(
          onPressed: () => context.goLocalized(ref, 'home'),
          label: Text(context.l10n.menuHome),
          icon: Icon(Icons.home_rounded),
        ),
        TextButton.icon(
          onPressed: () => context.goLocalized(ref, 'courtesy-cars'),
          label: Text(context.l10n.menuCourtesyCars),
          icon: Icon(Icons.car_rental_rounded),
        ),
      ],
    );
  }
}
