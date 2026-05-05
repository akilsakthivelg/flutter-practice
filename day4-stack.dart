import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    
    _controller =
        VideoPlayerController.networkUrl(
            Uri.parse(
              'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
            ),
          )
          ..initialize().then((_) {
            _controller.setLooping(true);
            _controller.play();
            setState(() {});
          });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool liked = false;
  bool disliked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: Stack(
          children: [
            _controller.value.isInitialized
                ? VideoPlayer(_controller)
                : Center(child: CircularProgressIndicator()),
            GestureDetector(
              onTap: () async {
                if (!_controller.value.isPlaying) {
                  await _controller.play();
                } else {
                  await _controller.pause();
                }
              },
              onDoubleTap: () => setState(() {
                liked = true;
                disliked = false;
              }),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.bottomCenter,
                    end: AlignmentGeometry.center,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.3),
                      Colors.transparent,
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 12,
              bottom: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            liked = true;
                            disliked = false;
                          });
                        },
                        icon: Icon(
                          (liked)
                              ? Icons.thumb_up_alt
                              : Icons.thumb_up_alt_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text("Like"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            liked = false;
                            disliked = true;
                          });
                        },
                        icon: Icon(
                          (disliked)
                              ? Icons.thumb_down_alt
                              : Icons.thumb_down_alt_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text("UnLike"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share_rounded,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text("Share"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.loop, color: Colors.black, size: 35),
                      ),
                      SizedBox(height: 4),
                      Text("Remix"),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
            Positioned(
              left: 25,
              right: 80,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        foregroundColor: Color.fromRGBO(255, 0, 0, 1),
                        radius: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "@akil_dev",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 8),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          padding: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(30),
                            side: BorderSide(color: Colors.white, width: 1.5),
                          ),
                        ),
                        child: Text(
                          "subscribe",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Building a Flutter reel UI 🔥 #flutter #dev',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Text(
                    '▶︎ Original Sound - Akil',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
