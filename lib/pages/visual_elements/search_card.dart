import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  final TextEditingController _searchControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(1),
        child: Card(
          elevation: 3,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(500))),
            child: TextField(
              style: TextStyle(fontSize: 15, color: Colors.black),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: "Buscar...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintStyle: TextStyle(fontSize: 15, color: Colors.black)),
              maxLines: 1,
              controller: _searchControl,
            ),
          ),
        ));
  }
}
