import 'package:flutter/material.dart';
import 'simple_list.dart';
import 'infinity_list.dart';
import 'infinity_math_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Списки в Flutter",
          style: TextStyle(color: Colors.black), 
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SimpleList()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey, 
              ),
              child: Text(
                "Простой список",
                style: TextStyle(color: Colors.black), 
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfinityList()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey, 
              ),
              child: Text(
                "Бесконечный список со строками",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfinityMathList()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey, 
              ),
              child: Text(
                "Бесконечный список с возведением в степень",
                style: TextStyle(color: Colors.black), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
