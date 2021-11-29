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
          padding: EdgeInsets.only(right: 20, left: 20, top: 5),
          children: <Widget>[
            ListTile(
              title: Text("Patagonia Sheraton"),
              subtitle: Text("Av. Soldati 400"),
              leading: Icon(Icons.ac_unit),
              trailing: Icon(Icons.account_box),
              tileColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Card(
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Image.asset(
                'assets/images/1.png',
                fit: BoxFit.fitHeight,
              ),
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            Card(
              color: Colors.green,
            ),
            Card(
              color: Colors.orange,
            ),
          ],
        ));
  }
}
