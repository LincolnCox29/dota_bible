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
      body: heroListView(heroesStrength)
    );
  }
}
class heroes_agility extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: heroAppBar(context, 'agility'),
      body: heroListView(heroesAgility)
    );
  }
}
class heroes_intelligence extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: heroAppBar(context, 'intelligence'),
      body: heroListView(heroesIntelligence)
    );
  }
}
class heroes_universal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: heroAppBar(context, 'universal'),
      body: heroListView(heroesUniversal)
    );
  }
}