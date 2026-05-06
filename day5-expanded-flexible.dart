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
        appBar: AppBar(title: Text('Weather Dashboard')),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(235, 221, 189, 1),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 15,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Date: ', style: TextStyle(fontSize: 25)),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              '6 May 2026',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(235, 221, 189, 1),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 15,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Temperature: ', style: TextStyle(fontSize: 25)),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              '26 °C',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 180,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(235, 221, 189, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Humidity',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Flexible(
                            child: Text(
                              '75% - Heavy moisture in atmosphere',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 180,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(235, 221, 189, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: Column(
                        children: [
                          Text(
                            'Wind',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 20),

                          Text('10 km/h', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(235, 221, 189, 1),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 15,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Description: ', style: TextStyle(fontSize: 25)),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'Today in Erode, expect hot and oppressive conditions with temperatures peaking at 38°C (100°F). The heat index feels significantly higher due to humidity levels hovering around 75%. While the morning remains partly cloudy and hazy, atmospheric instability is high.Expect scattered thunderstorms and heavy rain showers to develop by the evening or late night. These storms bring a 60% chance of precipitation, offering slight relief from the daytime heat. Winds remain light, shifting from the east at 5–10 km/h. If you are outdoors, stay hydrated and keep an umbrella handy for the predicted nighttime downpours.',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
