import 'package:booze/models/drink.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPreview extends StatelessWidget {
  ItemPreview({Key? key, required this.drink}) : super(key: key);

  Drink drink;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(2),
        height: 250,
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(drink.image), fit: BoxFit.contain)),
            ),
            Container(
                height: 50,
                width: 200,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 25,
                      child: Text(
                        drink.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 25,
                      child: Text(
                        "\$ ${drink.price}",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ))
          ],
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 20,
              spreadRadius: 10,
              offset: Offset(
                5,
                5,
              ),
            )
          ],
          color: Colors.white,
          shape: BoxShape.rectangle,
          border: Border.all(width: 0),
        ));
  }
}
