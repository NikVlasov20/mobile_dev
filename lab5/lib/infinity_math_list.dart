import 'package:flutter/material.dart';
import 'dart:math';

class InfinityMathList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Бесконечный список с возведением в степень")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          // Используем BigInt для работы с большими числами
          final result = BigInt.from(2).pow(index);

          // Логируем значение для отладки
          print("2 в степени $index = $result");

          // Возвращаем элемент списка
          return ListTile(title: Text("2 в степени $index = $result"));
        },
      ),
    );
  }
}
