import 'package:flutter/material.dart';

import 'config.dart';
import 'default.dart';
import 'layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const type = 1;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: type == 0
          ? IntroScreenDefault()
          : type == 1
          ? IntroScreenCustomConfig()
          : type == 2
          ? IntroScreenCustomLayout()
          : IntroScreenDefault(),
      debugShowCheckedModeBanner: false,
    );
  }
}