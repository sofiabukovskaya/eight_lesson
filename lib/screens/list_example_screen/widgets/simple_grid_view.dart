import 'package:flutter/material.dart';

class SimpleGridView extends StatelessWidget {
  final List<String> items =
      List.generate(20, (index) => 'Елемент ${index + 1}');

  SimpleGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: items.map(
          (item) {
            return Card(
              margin: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(item),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
