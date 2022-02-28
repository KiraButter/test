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
            body: Wrap(
              alignment: WrapAlignment.center,
              children: [
                const Image(
                  image: AssetImage('pp/img/mood.png'),
                ),
                Column(children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Text(
                        'Сегодняшняя дата',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontFamily: 'Comic',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text(
                        'Выбери свое настроение по шкалеа от кота Сима',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontFamily: 'Comic',
                            fontSize: 14),
                      )),
                ]),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      runSpacing: 10,
                      spacing: 5,
                      children: [mood(), mood(), mood(), mood()],
                    )
                  ],
                )
              ],
            )));
  }
}

class mood extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => checkedMood();
}

class checkedMood extends State<mood> {
  Color backColor = Colors.transparent;
  bool isVisibleCircle = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isVisibleCircle) new textMood(),
        TextButton(
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(backColor)),
        child: Image(
          image: AssetImage('pp/img/mood1.png'),
          width: 150,
        ),
        onPressed: () {
          setState(() {
            backColor = Color.fromARGB(123, 88, 14, 122);
            isVisibleCircle = true;
          });
        })
      ],
    ) ;
  }
}


class textMood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Текст под настр');
  }
  
}