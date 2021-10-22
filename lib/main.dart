import 'package:flutter/material.dart';
import 'package:screen_task1/screens/bottomBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
