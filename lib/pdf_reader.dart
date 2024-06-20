import 'package:flutter/material.dart';
import 'package:pdf_reader_app/core/theme_data_style.dart';
import 'package:pdf_reader_app/screens/home_screen.dart';

class PdfReader extends StatelessWidget {
  const PdfReader({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      themeMode: ThemeMode.system,
      theme: ThemeDataStyle.light,
      darkTheme: ThemeDataStyle.dark,
    );
  }
}
