import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade800),
        child: const Text('Home',
            style: TextStyle(color: Colors.grey, fontSize: 24)),
      )),
    );
  }
}
