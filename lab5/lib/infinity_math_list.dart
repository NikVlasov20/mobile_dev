import 'package:flutter/material.dart';

class InfinityMathList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Бесконечный список с возведением в степень",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final result = BigInt.from(2).pow(index);

          print("2 в степени $index = $result");

          return ListTile(
            title: Text(
              "2 в степени $index = $result",
              style: TextStyle(color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
