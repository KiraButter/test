import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
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
            body: _buttons()
                      )
                      );
                    
  }
}

class _buttons extends StatefulWidget {
   State<StatefulWidget> createState() => btn();
}

class btn extends State<_buttons> {
  @override
  Widget build(BuildContext context) {
    
    var items = <Widget>[];
    for (int i = 0; i < 100000; i++) {
      Widget item;
      item = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: (){}, icon: Icon(Icons.add), label: Text('$i'))
          ]);
      items.add(item);
    }
    return ListView(
      scrollDirection: Axis.vertical,
      children: items,
    );
  }
  
}