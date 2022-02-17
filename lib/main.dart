import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 167, 14, 98),
              title:
                  const Text('Начало', style: TextStyle(color: Colors.white))),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Icon(
                  Icons.adjust,
                  size: 50,
                  color: Colors.deepPurple,
                ),
                Icon(
                  Icons.adjust,
                  size: 30,
                  color: Colors.deepOrange,
                ),
                Icon(
                  Icons.adjust,
                  size: 70,
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(146, 151, 235, 230),
                borderRadius: BorderRadiusDirectional.circular(5)),
          ))));
}
