import 'package:flutter/material.dart';
import 'package:test_shop/constant.dart';

import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        fontFamily: "Gordita",
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        )
      ),
      home: const HomeScreen(),
    );
  }
}


