import 'package:flutter/material.dart';
import 'package:flutter_fashion_shop_ui/constant.dart';
import 'package:flutter_fashion_shop_ui/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Venus Fashion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Gorditas',
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
