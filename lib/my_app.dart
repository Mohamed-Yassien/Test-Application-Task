import 'package:flutter/material.dart';
import 'package:test_application/features/home/presentation/screens/home_screen.dart';

/// My First Screen
class MyApp extends StatelessWidget {

  /// MyApp Constructor
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
