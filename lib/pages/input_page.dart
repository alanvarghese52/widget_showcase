import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isChecked = false;
  String textFieldValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Widgets')),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                textFieldValue = value;
              });
            },
            decoration: const InputDecoration(labelText: 'Enter text'),
          ),
          const SizedBox(height: 20),
          Text('You entered: $textFieldValue'),
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Switch(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
