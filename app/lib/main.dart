import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Expenses Tracker'),
          ),
          body: Column(
            children: [
              Container(
                child: Card(
                  child: Text('Chart'),
                ),
                width: double.infinity,
                height: 50,
              ),
              Card(
                child: Text('Transactions'),
              )
            ],
          )),
    );
  }
}
