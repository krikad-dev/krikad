import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.go('/home/feature1'),
            child: const Text('Feature 1'),
          ),
        ],
      ),
    );
  }
}
