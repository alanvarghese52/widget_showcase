import 'package:flutter/material.dart';

class ScrollablePage extends StatelessWidget {
  const ScrollablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scrollable Widgets')),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(500, (index) => Text('Item $index')),
        ),
      ),
    );
  }
}
