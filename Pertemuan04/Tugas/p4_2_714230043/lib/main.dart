import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Pertemuan 4',
      theme: ThemeData.light(
        useMaterial3: false
      ),
      home: const WidgetLayout(),
    ); // MaterialApp
  }
}

class WidgetLayout extends StatelessWidget {
  const WidgetLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Pertemuan 4'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //box merah
            Container(
              width: 300,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                'Box 1',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            //box red dan hijau
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // box red
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text(
                    'Box 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                // box hijau
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text(
                    'Box 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

