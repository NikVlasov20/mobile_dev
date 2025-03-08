import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DormitoryPage());
  }
}

class DormitoryPage extends StatefulWidget {
  @override
  _DormitoryPageState createState() => _DormitoryPageState();
}

class _DormitoryPageState extends State<DormitoryPage> {
  int _likeCount = 27; // Начальное значение счетчика

  void _incrementLikeCount() {
    setState(() {
      _likeCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Общежитие КУБГАУ'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Image.network(
            'URL_TO_IMAGE', // Замените на URL изображения
            height: 200,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text('Общежитие №29'),
            subtitle: Text('Краснодар, ул. Калинина, 13'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.favorite, color: Colors.red),
                  onPressed: _incrementLikeCount,
                ),
                Text('$_likeCount'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Студенческое общежитие типа так называемых кампусов КУБГАУ состоит из девятиэтажных корпусов, в которых расположены блоки-секции. В каждой студенческой комнате 96% от всех проживающих - студенты первого курса.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.call, color: Colors.green, size: 30),
                    SizedBox(height: 8),
                    Text('Позвонить', style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.directions, color: Colors.green, size: 30),
                    SizedBox(height: 8),
                    Text('Маршрут', style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.share, color: Colors.green, size: 30),
                    SizedBox(height: 8),
                    Text('Поделиться', style: TextStyle(color: Colors.green)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
