import 'package:flutter/material.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => print('Tap!'),
              child: const Text('I am a button!'),
            ),
            TextButton(
              onPressed: () => print('Tap2 !'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('I am a text button!'),
            ),
            OutlinedButton(
              onPressed: () => print('Tap3 !'),
              child: const Text('I am a outlined button!'),
            ),
            IconButton(
              onPressed: () => print('Tap4!'),
              icon: const Icon(
                Icons.account_circle_rounded,
              ),
              iconSize: 60,
              tooltip: 'Hey!',
            ),
            InkWell(
              onTap: () => print('Tap 5!'),
              child: const Icon(Icons.access_time_filled),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextField(
                decoration: InputDecoration(
                labelText: 'Hey!',
                  hintText: 'Heyyyyyyyyy'
                ),
                onChanged: (text) {
                  print(text);
                },
                autofocus: true,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Tap 6!'),
        child: const Icon(Icons.abc_rounded),
      ),
    );
  }
}
