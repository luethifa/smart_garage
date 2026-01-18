import 'package:flutter/material.dart';
import 'package:smart_garage/shared/widgets/top_nav_bar.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Smart garage'),
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: TopNavBar(),
          ),
          Expanded(child: Column(children: [])),
        ],
      ),
    );
  }
}
