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
            Padding( // Item Cost
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.cost,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 2
                        )
                      ],
                      color: Colors.yellow
                    ),
                  ),
                  Image.asset('assets/img/icons/Gold_symbol.png')
                ],
              )
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, top: 20),
                    child : Container(
                      width: 170,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(225,27,38,44),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(225,15,76,117).withOpacity(.1),
                              offset: const Offset(10, 10),
                              blurRadius: 10,
                              spreadRadius: 10
                            )
                          ],
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(225,15,76,117)
                          )
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 5),
                              child : Text('Stats')
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child : ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: item.stats.length,
                                itemBuilder: (context, index)=> Text(
                                  item.stats[index] + '\n',
                                  style: const TextStyle(
                                    fontSize: 10
                                  ),
                                )
                              )
                            )
                          ]
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child : Container(
                      width: 170,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(225,27,38,44),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(225,15,76,117).withOpacity(.1),
                              offset: const Offset(10, 10),
                              blurRadius: 10,
                              spreadRadius: 10
                            )
                          ],
                          borderRadius: const BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(225,15,76,117)
                          )
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10, top: 5),
                              child : Text('Abilitie')
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child : Text(
                                'Description:\n${item.description}\n',
                                style: const TextStyle(
                                  fontSize: 10
                                ),
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child : ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: item.fields.length,
                                itemBuilder: (context, index)=> Text(
                                  item.fields[index] + '\n',
                                  style: const TextStyle(
                                    fontSize: 10
                                  ),
                                )
                              )
                            ),
                          ]
                        )
                      ),
                    ),
                  ),
                ]
              ),
            )
          ]
        )]
      ),   
    );
  }
}