import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_udontican/configs/default_theme.dart';
import 'package:ui_udontican/pages/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: defaultTheme.theme,
      home: const TestPage()
    );
  }
}