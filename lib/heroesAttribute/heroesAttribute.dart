import 'package:dota_bible/dataProvider.dart';
import 'package:dota_bible/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dota_bible/heroPage/heroPage.dart';
import 'package:dota_bible/NullableImage.dart';
part 'functions.dart';

abstract class HeroesBase extends StatelessWidget {
  final Type heroType;
  final List<dynamic> Function(DataProvider) getHeroes;
  final Widget Function(BuildContext, String) getNextHeroType;

  const HeroesBase(
      {required this.heroType,
      required this.getHeroes,
      required this.getNextHeroType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: heroAppBar(context, heroType),
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => getNextHeroType(context, 'next'),
              ),
            );
          } else if (details.delta.dx > 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => getNextHeroType(context, 'prev'),
              ),
            );
          }
        },
        child: heroListView(getHeroes(Provider.of<DataProvider>(context))),
      ),
    );
  }
}

class HeroesStrength extends HeroesBase {
  HeroesStrength()
      : super(
          heroType: HeroesStrength,
          getHeroes: (provider) => provider.strengthHeroes,
          getNextHeroType: (context, direction) {
            if (direction == 'next') {
              return HeroesAgility();
            } else {
              return HeroesUniversal();
            }
          },
        );
}

class HeroesAgility extends HeroesBase {
  HeroesAgility()
      : super(
          heroType: HeroesAgility,
          getHeroes: (provider) => provider.agilityHeroes,
          getNextHeroType: (context, direction) {
            if (direction == 'next') {
              return HeroesIntelligence();
            } else {
              return HeroesStrength();
            }
          },
        );
}

class HeroesIntelligence extends HeroesBase {
  HeroesIntelligence()
      : super(
          heroType: HeroesIntelligence,
          getHeroes: (provider) => provider.intelligenceHeroes,
          getNextHeroType: (context, direction) {
            if (direction == 'next') {
              return HeroesUniversal();
            } else {
              return HeroesAgility();
            }
          },
        );
}

class HeroesUniversal extends HeroesBase {
  HeroesUniversal()
      : super(
          heroType: HeroesUniversal,
          getHeroes: (provider) => provider.universalHeroes,
          getNextHeroType: (context, direction) {
            if (direction == 'next') {
              return HeroesStrength();
            } else {
              return HeroesIntelligence();
            }
          },
        );
}
