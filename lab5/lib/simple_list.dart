import 'package:flutter/material.dart';

class SimpleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Простой список",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Элемент 1",
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            title: Text(
              "Элемент 2",
              style: TextStyle(color: Colors.black), 
            ),
          ),
          ListTile(
            title: Text(
              "Элемент 3",
              style: TextStyle(color: Colors.black), 
            ),
          ),
        ],
      ),
    );
  }
}
