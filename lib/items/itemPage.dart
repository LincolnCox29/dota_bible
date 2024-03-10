import 'package:dota_bible/Objects/items.dart';
import 'package:flutter/material.dart';

class item_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Item item = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Row(
          children : [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child : Text(
                item.name,
                style: Theme.of(context).textTheme.bodyLarge
              ),
            ),
          ]
        )
      ),
      body: ListView(
        children: [Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(225,15,76,117).withOpacity(.1),
                      offset: const Offset(8, 8),
                      blurRadius: 10,
                      spreadRadius: 10
                    )
                  ]
                ),
                child : Image.network(
                  item.icon,
                  scale: 0.6
                ),
              ),
            ),
          ]
        )]
      ),   
    );
  }
}

