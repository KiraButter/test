import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
                    children: [
                      RaisedButton(
                        child: Image(
                          image: AssetImage('pp/img/mood1.png'),
                          width: 150,
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Image(
                          image: AssetImage('pp/img/mood2.png'),
                          width: 150,
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Image(
                          image: AssetImage('pp/img/mood3.png'),
                          width: 150,
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Image(
                          image: AssetImage('pp/img/mood4.png'),
                          width: 150,
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Image(
                          image: AssetImage('pp/img/mood5.png'),
                          width: 150,
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      RaisedButton(
                        child: Image(
                          image: AssetImage('pp/img/mood6.png'),
                          width: 150,
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              )
            ],
          ))));
}
