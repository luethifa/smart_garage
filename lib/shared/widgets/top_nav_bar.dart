import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          label: Text('Home'),
          icon: Icon(Icons.home_rounded),
        ),
        TextButton.icon(
          onPressed: () => context.go('/courtesy-cars'),
          label: Text('Courtesy cars'),
          icon: Icon(Icons.car_rental_rounded),
        ),
        // TextButton.icon(
        //   onPressed: () => context.go('/calendar'),
        //   label: Text('Calendar'),
        //   icon: Icon(Icons.calendar_month_rounded),
        // ),
      ],
    );
  }
}
