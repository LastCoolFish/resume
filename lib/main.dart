import 'package:flutter/material.dart';
import 'package:resume/styles/themes.dart';

import 'features/home/presentation/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // darkTheme: AppTheme.darkTheme,
      theme: AppTheme.ozonTheme,
      home: Scaffold(body: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}
