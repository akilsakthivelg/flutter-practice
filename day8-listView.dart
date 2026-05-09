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
    return MaterialApp(debugShowCheckedModeBanner: false, home: FeedPage());
  }
}

class FeedPage extends StatelessWidget {
  FeedPage({super.key});

  final List<Map<String, String>> posts = [
    {
      "name": "Akil",
      "time": "2 min ago",
      "image": "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
      "post":
          "Building Flutter UI daily to become a better mobile developer 🚀",
    },
    {
      "name": "Sophia",
      "time": "10 min ago",
      "image": "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
      "post": "ListView.builder makes rendering large lists super efficient.",
    },
    {
      "name": "John",
      "time": "30 min ago",
      "image": "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
      "post": "Consistency beats motivation. Keep building every day 🔥",
    },
    {
      "name": "Emma",
      "time": "45 min ago",
      "image": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80",
      "post":
          "Working on responsive Flutter layouts today. Loving the process!",
    },
    {
      "name": "David",
      "time": "1 hour ago",
      "image": "https://images.unsplash.com/photo-1504593811423-6dd665756598",
      "post": "Clean UI + smooth scrolling = better user experience.",
    },
    {
      "name": "Olivia",
      "time": "2 hours ago",
      "image": "https://images.unsplash.com/photo-1544005313-94ddf0286df2",
      "post": "Flutter makes building beautiful apps ridiculously fast.",
    },
    {
      "name": "Michael",
      "time": "3 hours ago",
      "image": "https://images.unsplash.com/photo-1504257432389-52343af06ae3",
      "post": "Just learned how ListView.builder improves performance 👨‍💻",
    },
    {
      "name": "Charlotte",
      "time": "4 hours ago",
      "image": "https://images.unsplash.com/photo-1517841905240-472988babdf9",
      "post": "Designing modern mobile UI in Flutter feels so satisfying ✨",
    },
    {
      "name": "Daniel",
      "time": "5 hours ago",
      "image": "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
      "post": "Small improvements every day eventually become big results.",
    },
    {
      "name": "Mia",
      "time": "6 hours ago",
      "image": "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df",
      "post":
          "Today's challenge: building reusable Flutter widgets efficiently.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(title: const Text("Flutter Feed"), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// HEADER
                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(post["image"]!),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post["name"]!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          post["time"]!,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.more_vert),
                  ],
                ),

                const SizedBox(height: 14),

                /// POST TEXT
                Text(post["post"]!, style: const TextStyle(fontSize: 15)),

                const SizedBox(height: 16),

                /// ACTIONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.favorite_border),
                    Icon(Icons.chat_bubble_outline),
                    Icon(Icons.send),
                    Icon(Icons.bookmark_border),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
