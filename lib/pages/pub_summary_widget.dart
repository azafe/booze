import 'package:booze/models/pub.dart';
import 'package:flutter/material.dart';

class PubSummary extends StatefulWidget {
  PubSummary({Key? key, required this.pub}) : super(key: key);

  final Pub pub;

  @override
  _PubSummaryState createState() => _PubSummaryState();
}

class _PubSummaryState extends State<PubSummary> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          height: 150,
          child: Stack(children: [
            Positioned(
                top: 120,
                left: 10,
                child: Text(
                  widget.pub.name,
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
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12),
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black26),
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 8, bottom: 10, left: 270),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 26,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white38),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue),
                                  ),
                                ),
                              ]),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(widget.pub.imageUrl), fit: BoxFit.cover),
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
}
