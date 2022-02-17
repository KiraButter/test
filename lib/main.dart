import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 167, 14, 98),
              title:
                  const Text('Начало', style: TextStyle(color: Colors.white))),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                image: AssetImage('pp/img/cat.jpg'),
              ),
              Text('КОТ - ПАВУК',
                  style: TextStyle(
                      fontFamily: 'Rozovii_Chulok',
                      color: Color.fromARGB(255, 156, 80, 255),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
              )
              )
            ],
          ))));
}
