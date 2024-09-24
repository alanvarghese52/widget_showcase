import 'package:flutter/material.dart';

class DialogFormPage extends StatefulWidget {
  const DialogFormPage({super.key});

  @override
  State<DialogFormPage> createState() => _DialogFormPageState();
}

class _DialogFormPageState extends State<DialogFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Simple Dialog'),
        content: const Text('This is a dialog!'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Close')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialogs & Forms')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value!;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Form Submitted: $_name')));
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showDialog,
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
