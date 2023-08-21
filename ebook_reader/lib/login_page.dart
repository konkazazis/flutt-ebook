import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword() async {
    // try {
    //   final UserCredential userCredential = await _auth.signInWithEmailAndPassword(
    //     email: _emailController.text,
    //     password: _passwordController.text,
    //   );
    //   print('User signed in: ${userCredential.user}');
    //   // Navigate to the next screen after successful login
    // } catch (e) {
    //   print('Error during login: $e');
    //   // Handle login error (show a snackbar or dialog)
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('./assets/logo.png', height: 100), // Add this line
            SizedBox(height: 16),
            TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: _passwordController, decoration: InputDecoration(labelText: 'Password')),
            SizedBox(height: 16),
            ElevatedButton(onPressed: _signInWithEmailAndPassword, child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
