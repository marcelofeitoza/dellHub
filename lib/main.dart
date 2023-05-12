import 'package:dellhub/screens/Home/Router.dart';
import 'package:flutter/material.dart';

import 'package:dellhub/screens/Login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DellHub',
      theme: ThemeData(primarySwatch: Colors.grey),
      initialRoute: '/login',
      routes: {
        '/': (context) => const HomeRouter(),
        '/login': (context) => const Login(),
      },
    );
  }
}
