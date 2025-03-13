import 'package:flutter/material.dart';

class InfinityList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Бесконечный список со строками",
          style: TextStyle(color: Colors.black), 
        ),
        backgroundColor: Colors.grey, 
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              "Строка №$index",
              style: TextStyle(color: Colors.black), 
            ),
          );
        },
      ),
    );
  }
}
