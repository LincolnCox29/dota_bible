import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dota_bible/dataProvider.dart';
import 'package:dota_bible/items/itemPage.dart';
part 'functions.dart';

abstract class Items extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: itemAppBar(context, type()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: child(context),
      ),
    );
  }

  Widget child(BuildContext context);
  String type();
}

class SimpleItems extends Items {

  @override
  Widget child(BuildContext context) {
    return itemListView(Provider.of<DataProvider>(context).simpleItems);
  }

  @override
  String type() => 'Simple';
}

class ComplexItems extends Items {
  
  @override
  Widget child(BuildContext context) {
    return itemListView(Provider.of<DataProvider>(context).complexItems);
  }

  @override
  String type() => 'Complex';
}