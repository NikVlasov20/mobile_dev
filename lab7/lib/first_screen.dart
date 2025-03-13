import 'package:flutter/material.dart';
import 'second_screen.dart'; // Импортируем второй экран

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Первый экран")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Переход на второй экран и ожидание результата
            String? result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );

            // Отображение результата в виде всплывающего уведомления
            if (result != null) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text("Вы выбрали: $result")));
            }
          },
          child: Text("Перейти на второй экран"),
        ),
      ),
    );
  }
}
