import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dota_bible/dataProvider.dart';
import 'package:dota_bible/items/itemPage.dart';
part 'functions.dart';

abstract class Items extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: itemAppBar(context, 'Base'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: buildChild(context),
      ),
    );
  }

  Widget buildChild(BuildContext context);
}

class SimpleItems extends Items {

  @override
  Widget buildChild(BuildContext context) {
    return itemListView(Provider.of<DataProvider>(context).simpleItems);
  }
}

class ComplexItems extends Items {
  
  @override
  Widget buildChild(BuildContext context) {
    return itemListView(Provider.of<DataProvider>(context).complexItems);
  }
}