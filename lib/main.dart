import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 167, 14, 98),
              centerTitle: true,
              title: Text('Трекер настроения',
                  style: TextStyle(color: Colors.white)
                  ),
                  leading: Icon(Icons.menu)
                  ),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: const [
              Image(
                image: AssetImage('pp/img/cat.jpg'),
              ),
              Text('КОТ - ПАВУК',
                  style: TextStyle(
                    fontFamily: 'Rozovii_Chulok',
                    color: Color.fromARGB(255, 80, 255, 80),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          ))));
}
