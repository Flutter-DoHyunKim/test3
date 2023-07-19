import 'package:flutter/material.dart';
import 'package:test3/pages/main_page.dart';
import 'package:test3/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        bottomNavigationBarTheme:  CloneTheme.bottomNavigationBarThemeData,
        textTheme: CloneTheme.normalLightTheme,
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
