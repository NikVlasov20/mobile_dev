import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0; // Начальное значение инкремента

  void _decrement() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Инкремент'), backgroundColor: const Color.fromARGB(255, 61, 227, 211)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Значение инкремента:', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text(
                '$_counter', // Отображение текущего значения
                style: TextStyle(fontSize: 36),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _decrement,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ), // Скругленные углы
                      ),
                      minimumSize: Size(50, 50), // Квадратная кнопка
                    ),
                    child: Icon(Icons.remove, size: 30),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: _increment,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ), // Скругленные углы
                      ),
                      minimumSize: Size(50, 50), // Квадратная кнопка
                    ),
                    child: Icon(Icons.add, size: 30),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: _reset, child: Text('Сбросить')),
            ],
          ),
        ),
      ),
    );
  }
}
