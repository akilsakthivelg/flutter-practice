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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 20),

                const Text(
                  'Now Playing',
                  style: TextStyle(color: Colors.white70, fontSize: 28),
                ),

                const SizedBox(height: 60),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/cover.png',
                    height: 300,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 30),

                const Text(
                  'Astronaut in the Ocean',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Masked Wolf',
                  style: TextStyle(color: Colors.white54, fontSize: 16),
                ),
                const SizedBox(height: 30),

                Slider(value: 40, max: 100, onChanged: (value) {}),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('1:24', style: TextStyle(color: Colors.white54)),

                      Text('3:45', style: TextStyle(color: Colors.white54)),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Spacer(),
                    Icon(Icons.skip_previous, color: Colors.white, size: 40),

                    Spacer(),
                    Icon(Icons.play_circle_fill, color: Colors.white, size: 80),

                    Spacer(),
                    Icon(Icons.skip_next, color: Colors.white, size: 40),
                    Spacer(),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
