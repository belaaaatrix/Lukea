import 'package:cobak/pages/ProfilePage.dart';
import 'package:cobak/widget/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:cobak/pages/SearchPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 247, 244, 237),
      ),
      home: NavBar(),
    );
  }
}
