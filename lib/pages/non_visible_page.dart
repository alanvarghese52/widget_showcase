import 'package:flutter/material.dart';

class NonVisiblePage extends StatelessWidget {
  const NonVisiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Non-Visible Widgets')),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('This is a text with padding'),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text('Aligned to the right'),
          ),
          SizedBox(height: 20),
          Opacity(
            opacity: 0.5,
            child: Text('Text with reduced opacity'),
          ),
        ],
      ),
    );
  }
}
