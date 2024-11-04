import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _HomeButtonWidget(
              onTap: () => Navigator.pushNamed(context, '/list'),
              title: 'List Screen',
            ),
            const SizedBox(
              height: 20,
            ),
            _HomeButtonWidget(
              onTap: () => Navigator.pushNamed(context, '/animation'),
              title: 'Animations Screen',
            ),
            const SizedBox(
              height: 20,
            ),
            _HomeButtonWidget(
              onTap: () => Navigator.pushNamed(context, '/hero'),
              title: 'Hero Screen',
            ),
            const SizedBox(
              height: 20,
            ),
            _HomeButtonWidget(
              onTap: () => Navigator.pushNamed(context, '/widgets'),
              title: 'Widgets Screen',
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeButtonWidget extends StatelessWidget {
  const _HomeButtonWidget({
    required this.onTap,
    required this.title,
  });

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(title),
    );
  }
}
