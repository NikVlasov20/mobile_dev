import 'package:flutter/material.dart';
import 'dart:math';

class InfinityMathList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Бесконечный список с возведением в степень")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(title: Text("2 в степени $index = ${pow(2, index)}"));
        },
      ),
    );
  }
}
