import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:resume/styles/themes.dart';

import 'features/home/presentation/pages/HomePage.dart';

void main() async {
  // Intl.defaultLocale = 'ru';
  // await initializeDateFormatting('ru_RU');
  initializeDateFormatting('fr_FR', null);

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
      // theme: AppTheme.liteGreenTheme,
      theme: AppTheme.liteTheme,
      home: Scaffold(body: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}
