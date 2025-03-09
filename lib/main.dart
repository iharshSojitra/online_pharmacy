import 'package:flutter/material.dart';
import 'package:online_pharmacy/home_screen.dart';

import 'Demo.dart';
import 'cart_screen.dart';
import 'medicine_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CartScreen(),
    );
  }
}
