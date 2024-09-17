import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataProvider with ChangeNotifier {

  final String apiUrl = 'https://api.opendota.com/api/';
  final String steamCdnUrl = 'https://cdn.cloudflare.steamstatic.com';

  Map<String, dynamic> _heroes = {};
  Map<String, dynamic> _items = {};
  Map<String, dynamic> _abilities = {};
  Map<String, dynamic> _abilitiesSortByHero = {};
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

  Map<String, dynamic> getHeroAbilitiesById(int id) {
    final Map<String, dynamic> result = {};
    final String name = _heroes[id.toString()]['name'];
    final List<dynamic> abilities = _abilitiesSortByHero[name]['abilities'];

    for (String ability in abilities) {
      if (_abilities.containsKey(ability) && ability != 'generic_hidden') {
        result.addAll({ability : _abilities[ability]});
      }
    }
    return result;
  }

  Future<void> __baseFetch(String url, Function(Map<String, dynamic>) updater) async {
    final response = await http.get(Uri.parse(apiUrl + url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      updater(data);
    } else {
      throw Exception('Failed to load $url');
    }
  }

  Future<void> _fetchHeroes() async {
    await __baseFetch('constants/heroes', (data) => _heroes = data);
  }

  Future<void> _fetchAbilities() async {
    await __baseFetch('constants/abilities', (data) => _abilities = data);
  }

  Future<void> _fetchAbilitiesSortByHero() async {
    await __baseFetch('constants/hero_abilities', (data) => _abilitiesSortByHero = data);
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
      throw Exception('Failed to load game version');
    }
  }

  Future<void> fetchData() async {
    await _fetchGameVersion();
    await _fetchAbilities();
    await _fetchAbilitiesSortByHero();
    await _fetchHeroes();
    await _fetchItems();
  }
}