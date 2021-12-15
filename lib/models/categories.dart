import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Category {
  late String name;
  late String image;

  Category({required this.name, required this.image});
}

final categories = [
  Category(name: "Bar", image: "assets/images/categories/bar.png"),
  Category(name: "Karoke", image: "assets/images/categories/microfono.png"),
  Category(name: "Boliche", image: "assets/images/categories/boliche.png"),
  Category(name: "Cerveceria", image: "assets/images/categories/cerveza.png"),
  Category(name: "Eventos", image: "assets/images/categories/eventos.png")
];
