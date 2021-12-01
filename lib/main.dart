import 'package:booze/clubs.dart';
import 'package:booze/pages/bar_irlanda.dart';
import 'package:booze/pages/ejemplo_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Clubs(),
    );
  }
}
