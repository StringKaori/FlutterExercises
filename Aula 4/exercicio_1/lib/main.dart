import 'package:flutter/material.dart';
import 'InfoForm.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() {
    return MainAppState();
  }
}

class MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Form Demo",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(child: InfoForm()),
      ),
    );
  }
}
