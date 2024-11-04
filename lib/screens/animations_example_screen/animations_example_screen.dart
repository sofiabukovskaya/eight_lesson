import 'package:flutter/material.dart';
import 'package:lecture_8/screens/animations_example_screen/explicit_animation.dart';

class AnimationExampleScreen extends StatefulWidget {
  const AnimationExampleScreen({super.key});

  @override
  State<AnimationExampleScreen> createState() => _AnimationExampleScreenState();
}

class _AnimationExampleScreenState extends State<AnimationExampleScreen> {
  bool isExpanded = false;
  bool isCentered = true;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Приклад анімацій'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: isExpanded ? 200 : 100,
              height: isExpanded ? 200 : 100,
              color: isExpanded ? Colors.blue : Colors.red,
              child: const Center(
                child: Text('AnimatedContainer'),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedOpacity(
              opacity: isVisible ? 1.0 : 0.0,
              duration: const Duration(seconds: 5),
              child: const Text('AnimatedOpacity'),
            ),
            const SizedBox(height: 20),
            AnimatedAlign(
              alignment: isCentered ? Alignment.center : Alignment.bottomRight,
              duration: const Duration(seconds: 1),
              child: Container(width: 50, height: 50, color: Colors.green),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    isExpanded = !isExpanded;
                    isCentered = !isCentered;
                    isVisible = !isVisible;
                  },
                );
              },
              child: const Text('Запустити анімацію'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ExplicitAnimation(),
                ),
              ),
              child: const Text('Перейти до Explicit анімації'),
            ),
          ],
        ),
      ),
    );
  }
}
