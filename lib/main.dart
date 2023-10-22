import 'package:flutter/material.dart';
import 'package:flutter_hello_world/screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower'
      ),
      home: HomeScreen(),
    ),
  );
}
