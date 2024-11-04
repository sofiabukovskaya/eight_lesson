import 'package:flutter/material.dart';
import 'package:lecture_8/screens/list_example_screen/widgets/builder_list_view.dart';
import 'package:lecture_8/screens/list_example_screen/widgets/separated_list_view.dart';
import 'package:lecture_8/screens/list_example_screen/widgets/simple_grid_view.dart';
import 'package:lecture_8/screens/list_example_screen/widgets/simple_list_view.dart';


class ListExamplesScreen extends StatelessWidget {
  const ListExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Типи Списків у Flutter'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('ListView'),
            subtitle: const Text('Простий вертикальний список'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SimpleListView(),
              ),
            ),
          ),
          ListTile(
            title: const Text('ListView.builder'),
            subtitle: const Text('Ліниве завантаження великого списку'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BuilderListView(),
              ),
            ),
          ),
          ListTile(
            title: const Text('ListView.separated'),
            subtitle: const Text('Список з роздільниками'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SeparatedListView(),
              ),
            ),
          ),
          ListTile(
            title: const Text('GridView'),
            subtitle: const Text('Сітка з фіксованою кількістю стовпців'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SimpleGridView(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
