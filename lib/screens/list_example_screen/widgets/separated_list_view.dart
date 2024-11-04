import 'package:flutter/material.dart';

class SeparatedListView extends StatelessWidget {
  final List<String> items =
      List.generate(20, (index) => 'Елемент ${index + 1}');

  SeparatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.separated'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            items[index],
          ),
          subtitle: const Text(
            'Hi!',
          ),
          leading: const Icon(
            Icons.access_time_filled_rounded,
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
