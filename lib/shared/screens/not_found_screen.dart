import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Text("Page not found: $path");
  }
}
