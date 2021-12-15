import 'package:booze/clubs.dart';
import 'package:booze/pages/cart.dart';
import 'package:booze/pages/home.dart';
import 'package:booze/pages/shop.dart';
import 'package:booze/pages/visual_elements/search_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          fontFamily: 'Montserrat',
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
            headline2: TextStyle(fontSize: 50, fontWeight: FontWeight.normal),
            headline3: TextStyle(fontSize: 38, fontWeight: FontWeight.normal),
            headline4: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.white70),
            bodyText1: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                fontFamily: 'Hind'),
          )),
      home: Home(),
      routes: {'cartscreen': (ctx) => CartScreen()},
    );
  }
}
