import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ebook Reader',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.amber,
            brightness: Brightness.light,
          ),
          textTheme: TextTheme(
              displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ))),
      home: LoginPage(), // Navigate to the login page as the initial screen
    );
  }
}
