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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.fromLTRB(32, 64, 32, 64),
          child: Column(
            spacing: 32,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.center,
                    color: Colors.black,
                    child: Text('Welcome to the App!',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                    )
                  )
                  ),
              Expanded(
                flex: 6,
                child: Image.network('https://shorturl.at/DJSDZ',
                fit: BoxFit.fill,),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.topLeft,
                    color: Colors.black,
                    child: Text('''You just lost the game!

I'm so sorry (not sorry), but sometimes this just feels better than Lorem Ipsum or other methods of placeholder texts.''',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    )
                  )
                  ),
      ],
           ),
          ),
         ),
  );
 }
}