import 'package:flutter/material.dart';
import 'package:lecture_8/screens/animations_example_screen/animations_example_screen.dart';
import 'package:lecture_8/screens/hero_animation_screen/hero_animation_screen.dart';
import 'package:lecture_8/screens/home_screen/home_screen.dart';
import 'package:lecture_8/screens/list_example_screen/list_examples_screen.dart';
import 'package:lecture_8/screens/widgets_screen/widgets_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/list': (context) => const ListExamplesScreen(),
        '/animation': (context) => const AnimationExampleScreen(),
        '/hero': (context) => const HeroFirstScreen(),
        '/widgets': (context) => const WidgetsScreen(),
      },
    );
  }
}
