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
            title: Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(widget.title,
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
              Text(Provider.of<DataProvider>(context).gameVersion,
                  style: Theme.of(context).textTheme.bodyLarge)
            ])),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MainMenuButton(
                text: 'Heroes',
                img: 'assets/img/menu/heroes_button.png',
                page: HeroesStrength()),
            MainMenuButton(
                text: 'Simple Items',
                img: 'assets/img/menu/base_items.png',
                page: SimpleItems()),
            MainMenuButton(
                text: 'Complex Items',
                img: 'assets/img/menu/items_button.png',
                page: ComplexItems()),
          ],
        )));
  }
}

class MainMenuButton extends StatelessWidget {
  const MainMenuButton(
      {super.key, required this.text, required this.img, required this.page});
  final String text;
  final String img;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        },
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    width: 3, color: const Color.fromARGB(225, 15, 76, 117)),
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(225, 15, 76, 117)
                          .withOpacity(.1),
                      offset: const Offset(8, 8),
                      blurRadius: 5,
                      spreadRadius: 10),
                ],
                borderRadius: BorderRadius.circular(10),
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.fill)),
            width: getScreenWidth(context) * 0.9,
            height: getScreenHeight(context) * 0.15,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
              child: Text(
                text,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    shadows: [
                      BoxShadow(color: Colors.black, offset: Offset(3, 3))
                    ]),
              ))
        ]));
  }
}
