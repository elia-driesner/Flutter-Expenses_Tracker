import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static String title_msg = 'Was koch ich überhaupt?';
  void new_dish() {
    setState(() {
      var title_msg = 'Das koch ich :)';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          child: Text(
            title_msg,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(0, 300, 0, 15)),
      ElevatedButton(onPressed: new_dish, child: Text('generate new')),
    ]);
  }
}
