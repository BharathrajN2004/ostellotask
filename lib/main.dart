import 'package:flutter/material.dart';

import 'navigation.dart';

Future main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Avenir"),
      title: "OstelloTest",
      home: const Navigation(),
    );
  }
}
