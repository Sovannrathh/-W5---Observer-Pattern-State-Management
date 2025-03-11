import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/color_counter.dart';
import 'color_tap_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorCounters(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("MyApp build()");
    return MaterialApp(
      home: ColorTapScreen(),
    );
  }
}