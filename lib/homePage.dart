import 'package:dota_bible/heroesAttribute/heroesAttribute.dart';
import 'package:dota_bible/items/items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dataProvider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    Provider.of<DataProvider>(context, listen: false).fetchData();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Row(
          children : [
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child : Text(
                widget.title,
                style: Theme.of(context).textTheme.bodyLarge
              ),
            ),
            Text(
              '7.35c',
              style: Theme.of(context).textTheme.bodyLarge
            )
          ]
        )
      ),
      body: Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => heroes_strength()));
              },
              child : mainMenuButton('Heroes', 'assets/img/menu/heroes_button.png', context),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SimpleItems()));
              },
              child : mainMenuButton('Base Items', 'assets/img/menu/base_items.png', context),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ComplexItems()));
              },
              child : mainMenuButton('Difficult Items', 'assets/img/menu/items_button.png', context),
            ),
          ],
        )
      )
    );
  }
}