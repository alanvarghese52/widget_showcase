import 'package:flutter/material.dart';

class StatelessStatefulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stateless & Stateful Widgets')),
      body: Column(
        children: [
          StatelessWidgetExample(),
          StatefulWidgetExample(),
        ],
      ),
    );
  }
}

class StatelessWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text('I am a StatelessWidget', style: TextStyle(fontSize: 24)),
    );
  }
}

class StatefulWidgetExample extends StatefulWidget {
  @override
  _StatefulWidgetExampleState createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $counter', style: TextStyle(fontSize: 24)),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text('Increment'),
        ),
      ],
    );
  }
}
