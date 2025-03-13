import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Второй экран"),
        backgroundColor: Colors.green, // Зелёный цвет заголовка
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Да"); // Передаём значение "Да"
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Зелёный цвет кнопки
              ),
              child: Text("Да"),
            ),
            SizedBox(height: 16), // Разделение между кнопками
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Нет"); // Передаём значение "Нет"
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Зелёный цвет кнопки
              ),
              child: Text("Нет"),
            ),
          ],
        ),
      ),
    );
  }
}
