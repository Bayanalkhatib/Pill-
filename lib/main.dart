import 'package:flutter/material.dart';
import 'package:pill_plus/medicin.dart';
import 'package:pill_plus/pre_login.dart';
import 'package:pill_plus/reminder_sec.dart';

import 'home.dart';
import 'login.dart';
import 'map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SelectionScreen(),
      //debugShowMaterialGrid: false,
    );
  }
}
