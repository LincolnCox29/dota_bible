import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataProvider with ChangeNotifier {

  final String apiUrl = 'https://api.opendota.com/api/';

  Map<String, dynamic> _heroes = {};
  Map<String, dynamic> _items = {};
  Map<String, dynamic> _abilities = {};
  List<dynamic> _simpleItems = [];
  List<dynamic> _complexItems = [];
  String _gameVersion = '';

  Map<String, dynamic> get heroes => _heroes;
  Map<String, dynamic> get abilities => _abilities;
  List<dynamic> get simpleItems => _simpleItems;
  List<dynamic> get complexItems => _complexItems;
  String get gameVersion => _gameVersion;

  List<dynamic> _getHeroesListByAttribute(String attributeTag)
    => _heroes.values.where((hero) => hero['primary_attr'] == attributeTag).toList();

  List<dynamic> get agilityHeroes =>  _getHeroesListByAttribute('agi');
  List<dynamic> get intelligenceHeroes => _getHeroesListByAttribute('int');
  List<dynamic> get strengthHeroes => _getHeroesListByAttribute('str');
  List<dynamic> get universalHeroes => _getHeroesListByAttribute('all');

  Future<void> _fetchHeroes() async {
    final response = await http.get(Uri.parse('${apiUrl}constants/heroes'));
    if (response.statusCode == 200) {
      _heroes = json.decode(response.body);
      notifyListeners();
    } else {
      throw Exception('Failed to load heroes');
    }
  }

  Future<void> _fetchItems() async {
    final response = await http.get(Uri.parse('${apiUrl}constants/items'));
    if (response.statusCode == 200) {
      _items = json.decode(response.body);

      _simpleItems = _items.values.where((item) => item['components'] == null).toList();
      _complexItems = _items.values.where((item) => item['components'] != null).toList();

      notifyListeners();
    } else {
      throw Exception('Failed to load items');
    }
  }

  Future<void> _fetchGameVersion() async {
    final response = await http.get(Uri.parse('${apiUrl}constants/patch'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      _gameVersion = data.last['name'];
      notifyListeners();
    } else {
      throw Exception('Failed to load gameVersion');
    }
  }

  Future<void> _fetchAbilities(int heroID) async {
    final abilitiesResponse = await http.get(Uri.parse('${apiUrl}constants/abilities'));
    if (abilitiesResponse.statusCode == 200) {
      _abilities = json.decode(abilitiesResponse.body);
    } else {
      throw Exception('Failed to load abilities');
    }
  }

  Future<void> fetchData() async {
    await _fetchHeroes();
    await _fetchItems();
    await _fetchGameVersion();
  }
}