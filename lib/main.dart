import 'package:flutter/material.dart';
import 'package:meditation_app/screens/bottom_nav_screen.dart';

import 'package:meditation_app/screens/meditate_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: BottomNavScreen());
  }
}
