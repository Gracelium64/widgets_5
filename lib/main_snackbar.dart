import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // double _sliderValue = 0.6;
  // bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.fromLTRB(32, 64, 32, 64),
              child: Column(
                spacing: 32,
                children: [
                  // Flexible(
                  //   child: Expanded(
                  //     child: Container(
                  //       color: Colors.red,
                  //       height: 200,
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   color: Colors.green,
                  //   height: 400,
                  // ),
                  // Container(
                  //   color: Colors.blue,
                  //   height: 100,
                  // ),
          
                  FilledButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Bye!'),
                          ),
                      );
                    },
                    child: Text('HaLlO!')),
          
          
          
          ],
               ),
              ),
             );
        }
      ),
  );
 }
}