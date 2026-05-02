import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: Center(
          child: Container(
            width: 320,
            height: 570,
            decoration: BoxDecoration(
              color: Color.fromRGBO(235, 221, 189, 1),
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 15,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 270,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(241, 192, 102, 1),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage("assets/akil.jpg"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "AKIL SAKTHIVEL",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text("Flutter Developer"),
                      SizedBox(height: 5),
                      Divider(
                        color: Color.fromRGBO(229, 142, 61, 1),
                        thickness: 2,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Choosing to be a Flutter developer is driven by the desire to build high-performance, visually consistent, cross-platform apps from a single codebase (iOS, Android, web, desktop). Key reasons include rapid development with Hot Reload, a rich widget library, and strong backing by Google, making it an efficient choice for creating engaging user experiences.",
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
