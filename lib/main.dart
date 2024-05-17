import 'package:flutter/material.dart';
import 'package:dota_bible/heroesAttribute/heroesAttribute.dart';
import 'package:dota_bible/items/items.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(225,27,38,44),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white
           ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 25
          ),
          titleMedium: TextStyle(
            color: Color.fromARGB(225,15,76,117)
          )
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(225,15,76,117),
        )
      ),
      home: const MyHomePage(title: 'Main'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => base()));
              },
              child : mainMenuButton('Base Items', 'assets/img/menu/base_items.png', context),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => difficult()));
              },
              child : mainMenuButton('Difficult Items', 'assets/img/menu/items_button.png', context),
            ),
          ],
        )
      )
    );
  }
}