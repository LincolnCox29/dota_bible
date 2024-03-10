import 'package:dota_bible/items/itemPage.dart';
import 'package:flutter/material.dart';
import '../Objects/items.dart';
part 'functions.dart';

class base extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    itemsListGen();
    return Scaffold(
      appBar: itemAppBar(context, 'Base'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child : itemListView(baseItems, 'base')
      )
    );
  }
}

class difficult extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    itemsListGen();
    return Scaffold(
      appBar: itemAppBar(context, 'Difficult'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child : itemListView(difficultItems, 'difficult')
      )
    );
  }
}