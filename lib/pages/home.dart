import 'package:booze/models/categories.dart';
import 'package:booze/models/pub.dart';
import 'package:booze/pages/bar_irlanda.dart';
import 'package:booze/pages/category.dart';
import 'package:booze/pages/pub_summary_widget.dart';
import 'package:booze/pages/visual_elements/search_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text(
            "BooZapp",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildSearchBar(context),
              localRow("Lugares Trending"),
              pubList(context),
              localRow("Categorias"),
              categoryList(context)
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.purple,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_sharp), label: 'Escanear'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          ],
        ));
  }
}

Widget localRow(String place) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "$place",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      TextButton(
        onPressed: () {},
        child:
            Text("Ver todos (30)", style: TextStyle(color: Colors.blueAccent)),
      )
    ],
  );
}

Widget pubList(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 2.4,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
      primary: false,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: pubs.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PubShop(pub: pubs.elementAt(index))));
          },
          child: PubSummary(pub: pubs.elementAt(index)),
        );
      },
    ),
  );
}

Widget categoryList(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height / 6,
    child: ListView.builder(
      primary: false,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PubShop(pub: pubs.elementAt(index))));
          },
          child: CategoryItem(category: categories.elementAt(index)),
        );
      },
    ),
  );
}

Widget buildSearchBar(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(1),
    child: SearchCard(),
  );
}
