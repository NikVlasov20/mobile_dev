import 'package:flutter/material.dart';

class SimpleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Простой список")),
      body: ListView(
        children: [
          ListTile(title: Text("Элемент 1")),
          ListTile(title: Text("Элемент 2")),
          ListTile(title: Text("Элемент 3")),
        ],
      ),
    );
  }
}
