import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataProvider with ChangeNotifier {
  Map<String, dynamic> _heroes = {};
  Map<String, dynamic> _items = {};
  List<dynamic> _simpleItems = [];
  List<dynamic> _complexItems = [];

  Map<String, dynamic> get heroes => _heroes;
  List<dynamic> get simpleItems => _simpleItems;
  List<dynamic> get complexItems => _complexItems;

  List<dynamic> _getHeroesListByAttribute(String attributeTag)
    => _heroes.values.where((hero) => hero['primary_attr'] == attributeTag).toList();

  List<dynamic> get agilityHeroes =>  _getHeroesListByAttribute('agi');
  List<dynamic> get intelligenceHeroes => _getHeroesListByAttribute('int');
  List<dynamic> get strengthHeroes => _getHeroesListByAttribute('str');
  List<dynamic> get universalHeroes => _getHeroesListByAttribute('all');

  Future<void> fetchHeroes() async {
    final response = await http.get(Uri.parse('https://api.opendota.com/api/constants/heroes'));
    if (response.statusCode == 200) {
      _heroes = json.decode(response.body);
      notifyListeners();
    } else {
      throw Exception('Failed to load heroes');
    }
  }

  Future<void> fetchItems() async {
    final response = await http.get(Uri.parse('https://api.opendota.com/api/constants/items'));
    if (response.statusCode == 200) {
      _items = json.decode(response.body);

      _simpleItems = _items.values.where((item) => item['components'] == null).toList();
      _complexItems = _items.values.where((item) => item['components'] != null).toList();

      notifyListeners();
    } else {
      throw Exception('Failed to load items');
    }
  }

  Future<void> fetchData() async {
    await fetchHeroes();
    await fetchItems();
  }
}