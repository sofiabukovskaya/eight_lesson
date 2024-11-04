import 'package:flutter/material.dart';

class HeroFirstScreen extends StatelessWidget {
  const HeroFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Перший екран'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreen(),
              ),
            );
          },
          child: Hero(
            tag: 'imageHero',
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Другий екран'),
      ),
      body: Center(
        child: Hero(
          tag: 'imageHero',
          child: Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
