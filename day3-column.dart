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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome back!", style: TextStyle(fontSize: 40)),
            Text("Enter your credentials to login"),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  filled: true,
                  fillColor: Color.fromRGBO(253, 172, 230, 0.497),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  filled: true,
                  fillColor: Color.fromRGBO(253, 172, 230, 0.497),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 320,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(168, 6, 160, 1),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("Forgot password?")),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                TextButton(onPressed: () {}, child: Text("Sign up")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
