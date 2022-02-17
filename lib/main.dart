import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar( backgroundColor: Color.fromARGB(255, 167, 14, 98),
            title:
            const Text('Начало',
                style: TextStyle(color: Colors.white))),
       
        body:  Container(
          decoration: BoxDecoration(color: Color.fromARGB(146, 151, 235, 230), border: Border.all(width: 5, color: Colors.red), borderRadius: BorderRadiusDirectional.circular(5)),
          alignment: Alignment.center,
          child: Text(
            'Container',
            style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            )) 
  ));
}