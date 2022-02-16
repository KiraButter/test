import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar( backgroundColor: Colors.deepPurpleAccent,
            title:
            const Text('Начало',
                style: TextStyle(color: Colors.white))),
        body:  Align(alignment: Alignment(0, 0), child: Text('Хотела вставить картинку, но не разобралась, как :<',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Colors.purple)))


    ),
  ));
}