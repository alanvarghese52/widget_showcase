import 'package:flutter/material.dart';

class ListGridPage extends StatelessWidget {
  const ListGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List & Grid Widgets')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.list),
                  title: Text('List Item $index'),
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.blueAccent,
                  child: Center(child: Text('Grid Item $index')),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
