import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'DnLight'),
      home: Scaffold(
        body: Center(
          child: Text('اپلیکیشن تسک'),
        ),
      ),
    );
  }
}