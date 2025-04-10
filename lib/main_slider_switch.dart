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
  double _sliderValue = 0.6;
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(0, 64, 0, 0),
          child: Column(
            spacing: 32,
            children: [
              Slider(
                label: '$_sliderValue',
                max: 1,
                min: 0,
                divisions: 5,
                value: _sliderValue,
                onChanged: (value) {
                  setState(() {
                  _sliderValue = value;
         });
        },
       ),
       Switch(
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.black,
        activeColor: Colors.purple[900],
        value: _switchValue,
        onChanged: (value) {
          setState(() {
            _switchValue = value;
          });
        },
        )
      ],
     ),
    ),
   ),
  );
 }
}
