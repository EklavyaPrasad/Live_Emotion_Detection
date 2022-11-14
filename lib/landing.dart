import 'package:flutter/material.dart';
import 'package:live_emotion_detection/main.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Live Emotion Detection App 🐇'),
          backgroundColor: const Color(0xfffe9400),
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 5.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // ClipRRect(
                //   borderRadius: BorderRadius.circular(8.0),
                //   child: Image.asset(
                //     'assets/hehe.gif',
                //     height: 100.0,
                //     width: 120.0,
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/hehe.gif',
                      width: 100,
                      height: 120,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Major Project',
                      style:
                          TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                  Text(
                    'In Computer Science & Engineering (Session: 2022-23)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
                const SizedBox(height: 30.0),
                Row(
                    children: const [
                      Text('Choose from the following options -',
                      style: TextStyle(
                        fontSize: 15,
                      ),)
                    ],
                  ),
                const SizedBox(height: 15.0),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: Container(

                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Color(0xFF0D47A1),
                                    Color(0xFF1976D2),
                                    Color(0xFF42A5F5),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.all(16.0),
                              textStyle: const TextStyle(fontSize: 20),
                                fixedSize: Size.fromHeight(150),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Home()),
                              );
                            },
                            child: const Text('               Live From Camera               '),
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
                const SizedBox(height: 15.0),
                Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      // Color(0xFFcb7600),
                                      // Color(0xFFf18c00),
                                      // Color(0xFFffa500),
                                      Color(0xFF0D47A1),
                                      Color(0xFF1976D2),
                                      Color(0xFF42A5F5),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.all(16.0),
                                textStyle: const TextStyle(fontSize: 20),
                                fixedSize: Size.fromHeight(150),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Home()),
                                );
                              },
                              child: const Text('               From Static Image               '),
                            ),
                          ],
                        ),
                      ),
                    ]
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Made with ❤ SGC')
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const [
                //     Text('Submitted by Eklavya Prasad & Bushra Khan')
                //   ],
                // )
              ]
            ),
          ),
        ));
  }
}
