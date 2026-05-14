import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  final List<Map<String, String>> contacts = const [
    {"name": "Akil", "message": "Let’s build something amazing 🚀"},
    {"name": "Rahul", "message": "UI update completed"},
    {"name": "Priya", "message": "Meeting at 5 PM"},
    {"name": "John", "message": "Check the latest commit"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text("Messages"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: ListView.separated(
        padding: const EdgeInsets.all(16),

        itemCount: contacts.length,

        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey.shade300,
            thickness: 1,
            indent: 70,
            endIndent: 10,
            height: 24,
          );
        },

        itemBuilder: (context, index) {
          final contact = contacts[index];

          return Row(
            children: [
              CircleAvatar(
                radius: 26,
                backgroundColor: Colors.blue.shade100,
                child: Text(
                  contact["name"]![0],
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contact["name"]!,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      contact["message"]!,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),

              const Icon(Icons.chevron_right, color: Colors.grey),
            ],
          );
        },
      ),
    );
  }
}
