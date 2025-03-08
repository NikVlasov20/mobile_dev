import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

  Future<void> _launchURL(String url) async {
    try {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ошибка: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Общежитие КУБГАУ'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'URL_TO_IMAGE', // Замените на URL изображения
              height: 200,
              width: double.infinity,
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
            // Кнопки теперь находятся выше описания
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.phone, color: Colors.green, size: 30),
                      onPressed: () {
                        _launchURL('tel:+71234567890'); // Замените на нужный номер
                      },
                    ),
                    Text('Позвонить'),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.navigation, color: Colors.green, size: 30),
                      onPressed: () {
                        _launchURL('https://yandex.ru/maps'); // Замените на нужный URL
                      },
                    ),
                    Text('Маршрут'),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.share, color: Colors.green, size: 30),
                      onPressed: () {
                        _launchURL('https://vk.com/share.php?url=YOUR_URL'); // Замените на нужный URL
                      },
                    ),
                    Text('Поделиться'),
                  ],
                ),
              ],
            ),
            // Описание теперь ниже кнопок
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
