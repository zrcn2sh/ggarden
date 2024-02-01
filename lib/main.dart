import 'package:flutter/material.dart';
import 'package:ggarden/screens/login.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: Colors.white30,
          textTheme: const TextTheme(
            headline1: TextStyle(
              color: Color.fromRGBO(147, 174, 193, 1),
            ),
          ),
          cardColor: const Color.fromRGBO(99, 99, 99, 1)),
      home: const Login(),
    );
  }
}
