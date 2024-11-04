import 'package:flutter/material.dart';

class SimpleListView extends StatelessWidget {
  final List<String> items =
      List.generate(80, (index) => 'Елемент ${index + 1}');

  SimpleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple ListView'),
      ),
      body: ListView(
        children: items
            .map(
              (item) => Text(item),
            )
            .toList(),
      ),
    );
  }
}
