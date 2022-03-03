// ignore_for_file: camel_case_types

import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 167, 14, 98),
                centerTitle: true,
                title: const Text('Трекер настроения',
                    style: TextStyle(color: Colors.white)),
                leading: const Icon(Icons.menu)),
            body: mood()
    ));
  }
}

class mood extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => checkedMood();
}

class checkedMood extends State<mood> {
  Color backColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    var items = <Widget>[];
    for (int i = 0; i < 100000; i++) {
      Widget item;
      item = Row
      (mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        TextButton(
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(backColor)),
        child: Image(
          image: AssetImage('pp/img/mood4.png'),
          width: 150,
        ),
        onPressed: () {
          
        })
      ]);
      items.add(item);
    }
    return ListView(
      scrollDirection: Axis.vertical,
      children: items,
    );

  }
}

