import 'package:booze/models/pub.dart';
import 'package:flutter/material.dart';
import 'package:booze/models/drink.dart';

class PubShop extends StatelessWidget {
  const PubShop({
    Key? key,
    required this.pub,
  }) : super(key: key);

  final Pub pub;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(pub.name),
        ),
        body: Container());
  }
}
