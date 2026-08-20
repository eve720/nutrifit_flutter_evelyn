import 'package:flutter/material.dart';
import 'home/home.dart';

void main() {
  runApp(const NutriFitApp());
}

class NutriFitApp extends StatelessWidget {
  const NutriFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NutriFit',
      home: const Home(),
    );
  }
}