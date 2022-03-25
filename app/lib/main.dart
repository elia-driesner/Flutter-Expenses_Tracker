import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  static String title_msg = 'Was koch ich überhaupt?';
  void new_dish() {
    setState(() {
      title_msg = 'Das koch ich :)';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(children: [
      Container(
          child: Text(
            title_msg,
            style: const TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(0, 300, 0, 15)),
      ElevatedButton(onPressed: new_dish, child: const Text('generate new')),
    ])));
  }
}
