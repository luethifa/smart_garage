import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.8,
                color: Colors.black87,
              ),
            ),
            Divider(height: 0.5, color: Colors.black26),
            SizedBox(height: 10),
            Flexible(child: child),
          ],
        ),
      ),
    );
  }
}
