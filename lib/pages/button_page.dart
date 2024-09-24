import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Elevated Button'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Text Button'),
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
