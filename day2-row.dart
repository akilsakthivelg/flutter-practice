import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget item(String image, String name, int price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 25),
        Container(
          height: 80,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black, width: 2),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 25),
        Expanded(
          child: Text(
            name,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: 25),
        Text(
          '₹$price',
          style: TextStyle(fontSize: 25, color: Color.fromRGBO(154, 103, 2, 1)),
        ),
        SizedBox(width: 25),
      ],
    );
  }

  final List<List<dynamic>> items = [
    ['assets/pani_puri.jpg', 'Pani Puri', 30],
    ['assets/masala_dosa.jpg', 'Masala Dosa', 80],
    ['assets/samosa.jpg', 'Samosa', 15],
    ['assets/biryani.jpg', 'Chicken Biryani', 150],
    ['assets/idli.jpg', 'Idli (2 pcs)', 40],
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Food products", style: TextStyle(fontSize: 25)),
          ),
          backgroundColor: Color.fromRGBO(239, 255, 11, 0.345),
        ),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: Column(
          children: [
            SizedBox(height: 25),
            for (var x in items) ...[
              item(x[0] as String, x[1] as String, x[2] as int),
              Divider(),
            ],
          ],
        ),
      ),
    );
  }
}
