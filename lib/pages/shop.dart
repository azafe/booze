import 'package:booze/models/drink.dart';
import 'package:booze/models/pub.dart';
import 'package:booze/pages/visual_elements/item_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(Test());

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {  
  List<Drink> _drinks = [
    Drink("Heineken", "300", "assets/images/drinks/heineken.png"),
    Drink("Andes Ipa", "420", "assets/images/drinks/andes_ipa.png"),
    Drink("Andes Rubia", "500", "assets/images/drinks/andes_rubia.png"),
    Drink("Jack Daniels", "100", "assets/images/drinks/jack_daniels.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: BackButton(),
          centerTitle: true,
          title: Text("Drink Shop"),
        ),
        body: Container(
          height: 380,
          child: Column(children: [
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _drinks.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card3d(drink: _drinks[index]),
                      );
                    }))
          ]),
        ));
  }
}

class Card3d extends StatelessWidget {
  const Card3d({Key? key, required this.drink}) : super(key: key);

  final Drink drink;

  @override
  Widget build(BuildContext context) {
    final border = BorderRadius.circular(30);
    return PhysicalModel(
      elevation: 10,
      borderRadius: border,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 250,
            child: Image.asset(
              drink.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  drink.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("\$ ${drink.price}")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: PhysicalModel(
              color: Colors.purple,
              elevation: 5,
              borderRadius: border,
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.remove_circle),
                    Text("0",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                    Icon(Icons.add_circle),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
