import 'package:flutter/material.dart';

class GesturePage extends StatelessWidget {
  const GesturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gesture Detection Widgets')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Tapped')));
          },
          onDoubleTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Double Tapped')));
          },
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Long Pressed')));
          },
          child: Container(
            padding: const EdgeInsets.all(50),
            color: Colors.blueAccent,
            child: const Text('Tap, Double Tap, or Long Press'),
          ),
        ),
      ),
    );
  }
}
