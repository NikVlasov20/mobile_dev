import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Калькулятор площади',
      theme: ThemeData(
        primaryColor: Colors.green, // Основной цвет
        colorScheme: ColorScheme.light(secondary: Colors.green), // Цвет акцента
        appBarTheme: AppBarTheme(
          color: Colors.green, // Цвет заголовка
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _widthController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  void _calculateArea() {
    if (_formKey.currentState!.validate()) {
      double width = double.parse(_widthController.text);
      double height = double.parse(_heightController.text);
      double area = width * height;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('S = $width * $height = $area (мм²)'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Калькулятор площади'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Ширина (мм):',
                style: TextStyle(fontSize: 20.0),
              ),
              TextFormField(
                controller: _widthController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите ширину';
                  }
                  double? width = double.tryParse(value);
                  if (width == null || width < 0) {
                    return 'Пожалуйста, введите положительное числовое значение';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20.0),
              Text(
                'Высота (мм):',
                style: TextStyle(fontSize: 20.0),
              ),
              TextFormField(
                controller: _heightController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите высоту';
                  }
                  double? height = double.tryParse(value);
                  if (height == null || height < 0) {
                    return 'Пожалуйста, введите положительное числовое значение';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _calculateArea,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Цвет кнопки
                ),
                child: Text('Вычислить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
