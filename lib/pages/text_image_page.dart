import 'package:flutter/material.dart';

class TextImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text & Image Widgets')),
      body: Column(
        children: [
          Text('This is a text widget', style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Image.network('https://via.placeholder.com/150'),
        ],
      ),
    );
  }
}
