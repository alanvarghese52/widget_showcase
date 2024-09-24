import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Layout Widgets')),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blueAccent,
            child: const Text('This is a container with padding', style: TextStyle(color: Colors.white)),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 3'),
            ],
          ),
          const SizedBox(height: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Item A'),
              Text('Item B'),
              Text('Item C'),
            ],
          ),
        ],
      ),
    );
  }
}
