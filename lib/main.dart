import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:resume/styles/themes.dart';

import 'features/home/presentation/pages/HomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ru', null);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Resume',
      theme: AppTheme.liteTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: Scaffold(body: MyHomePage(title: 'Resume Home Page')),
    );
  }
}
