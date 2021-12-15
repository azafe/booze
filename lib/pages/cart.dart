import 'package:booze/helpers/counter.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Mi Pedido", style: Theme.of(context).textTheme.headline3),
                Expanded(
                    child: ListView(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.zero),
                      child: ListTile(
                          title: Text("Cerveza"),
                          subtitle: Text("500cc"),
                          leading: Icon(Icons.local_drink),
                          trailing: Counter()),
                    )
                  ],
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
