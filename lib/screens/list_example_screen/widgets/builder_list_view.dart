import 'package:flutter/material.dart';

class BuilderListView extends StatelessWidget {
  final List<String> items =
      List.generate(50, (index) => 'Елемент ${index + 1}');

  BuilderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              items[index]
            ),
          );
        },
      ),
    );
  }
}
