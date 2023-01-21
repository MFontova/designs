import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_screen',
      routes: {
        'basic_design': (context) => BasicDesignScreen(),
        'scroll_screen': (context) => ScrollScreen()
      },
    );
  }
}
