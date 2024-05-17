import 'package:dota_bible/items/items.dart';
import 'package:flutter/material.dart';
import '../Objects/heroes.dart';
import 'package:dota_bible/heroPage/heroPage.dart';
import 'package:dota_bible/main.dart';
part 'functions.dart';

class heroes_strength extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: heroAppBar(context, 'strength'),
      body: GestureDetector( 
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_agility()));
          }
          if (details.delta.dx > 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_universal()));
          }
        },
        child : heroListView(heroesStrength),
      )
    );
  }
}

class heroes_agility extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: heroAppBar(context, 'agility'),
      body: GestureDetector( 
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_intelligence()));
          }
          if (details.delta.dx > 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_strength()));
          }
        },
        child : heroListView(heroesAgility),
      )
    );
  }
}

class heroes_intelligence extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: heroAppBar(context, 'intelligence'),
      body: GestureDetector( 
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_universal()));
          }
          if (details.delta.dx > 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_agility()));
          }
        },
        child : heroListView(heroesIntelligence),
      )
    );
  }
}

class heroes_universal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: heroAppBar(context, 'universal'),
      body: GestureDetector( 
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_strength()));
          }
          if (details.delta.dx > 0) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => heroes_intelligence()));
          }
        },
        child : heroListView(heroesUniversal),
      )
    );
  }
}