import 'package:dota_bible/dataProvider.dart';
import 'package:dota_bible/items/itemPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
part 'functions.dart';

class base extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: itemAppBar(context, 'Base'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child : itemListView(Provider.of<DataProvider>(context).simpleItems, 'base')
      )
    );
  }
}

class difficult extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: itemAppBar(context, 'Difficult'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child : itemListView(Provider.of<DataProvider>(context).complexItems, 'difficult')
      )
    );
  }
}