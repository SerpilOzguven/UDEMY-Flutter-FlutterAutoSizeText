import 'package:flutter/material.dart';
import 'package:flutter_auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Package',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
