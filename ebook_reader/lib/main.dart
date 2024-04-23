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
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(), // Navigate to the login page as the initial screen
    );
  }
}
