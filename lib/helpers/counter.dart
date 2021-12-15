import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: PhysicalModel(
        color: Colors.purple,
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _count -= 1;
                    });
                  },
                  child: Icon(Icons.remove_circle)),
              Text("$_count",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      _count += 1;
                    });
                  },
                  child: Icon(Icons.add_circle)),
            ],
          ),
        ),
      ),
    );
  }
}
