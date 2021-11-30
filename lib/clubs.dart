import 'dart:ui';

import 'package:flutter/material.dart';

class Clubs extends StatelessWidget {
  const Clubs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Text('BoozApp'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20), //(right: 20, left: 20, top: 5),
          children: <Widget>[
            patagoniaSheraton(),
            barIrlanda(),
            pollock(),
            patagoniaHilton(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_sharp), label: 'Escanear'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'Bussines'),
          ],
        ));
  }
}

Widget patagoniaSheraton() {
  return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Container(
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('assets/images/1.png'), fit: BoxFit.cover)),
          child: Stack(
            children: [
              Positioned(
                  top: 120,
                  left: 10,
                  child: Text(
                    "Patagonia Sheraton",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                            blurRadius: 10,
                            color: Colors.black,
                            offset: Offset(1, 4))
                      ],
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          )));
}

Widget barIrlanda() {
  return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Container(
        height: 150,
        child: Stack(children: [
          Positioned(
              top: 120,
              left: 10,
              child: Text(
                "Bar Irlanda",
                style: TextStyle(
                  shadows: [
                    Shadow(
                        blurRadius: 10,
                        color: Colors.black,
                        offset: Offset(1, 4))
                  ],
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black12),
          )
        ]),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('assets/images/bar_irlanda.jpg'),
              fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 1))
          ],
        ),
      ));
}

Widget pollock() {
  return Container(
    height: 150,
    child: Stack(children: [
      Positioned(
          top: 120,
          left: 10,
          child: Text(
            "Pollock",
            style: TextStyle(
              shadows: [
                Shadow(
                    blurRadius: 10, color: Colors.black, offset: Offset(1, 4))
              ],
              color: Colors.white54,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
      Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.black12),
      )
    ]),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
          image: AssetImage('assets/images/pollock.jpg'), fit: BoxFit.cover),
      boxShadow: [
        BoxShadow(
            color: Colors.black,
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 1))
      ],
    ),
  );
}

Widget patagoniaHilton() {
  return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Container(
        height: 150,
        child: Stack(children: [
          Positioned(
              top: 120,
              left: 10,
              child: Text(
                "Patagonia Hilton",
                style: TextStyle(
                  shadows: [
                    Shadow(
                        blurRadius: 10,
                        color: Colors.black,
                        offset: Offset(1, 4))
                  ],
                  color: Colors.white54,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black12),
          )
        ]),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('assets/images/patagonia_hilton.jpg'),
              fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 1))
          ],
        ),
      ));
}
