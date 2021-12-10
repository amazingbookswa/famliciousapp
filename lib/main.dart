import 'package:famliciousapp/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(famliciousApp());
}

class famliciousApp extends StatelessWidget {
  const famliciousApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'famlicious App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: homeview(),
    );
  }
}
