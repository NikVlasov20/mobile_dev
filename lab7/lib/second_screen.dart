import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Второй экран")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Да"); // Передаём значение "Да"
              },
              child: Text("Да"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "Нет"); // Передаём значение "Нет"
              },
              child: Text("Нет"),
            ),
          ],
        ),
      ),
    );
  }
}
