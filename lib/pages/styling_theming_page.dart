import 'package:flutter/material.dart';

class StylingThemingPage extends StatelessWidget {
  const StylingThemingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Styling & Theming')),
      body: Column(
        children: [
          Text('Styled Text', style: Theme.of(context).textTheme.bodyLarge),
          Icon(Icons.star, size: 50, color: Theme.of(context).primaryColor),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text('Container with Theme Color'),
          ),
        ],
      ),
    );
  }
}
