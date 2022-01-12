import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tutorial/pages/detail_page.dart';
import 'package:tutorial/pages/home_page.dart';
import 'package:tutorial/pages/navpages/main_page.dart';
import 'package:tutorial/pages/welcome_page.dart';

void main() {
  runApp(const MyApp()); // Start MyApp that is main page.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailPage()
    );
  }
}