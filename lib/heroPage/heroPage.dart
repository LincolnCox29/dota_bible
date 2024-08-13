import 'package:dota_bible/dataProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
part 'functions.dart';

class HeroPage extends StatefulWidget {
  @override
  State<HeroPage> createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  late Map<String, dynamic> abilities;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Map<String, dynamic> hero = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    abilities = Provider.of<DataProvider>(context).getHeroAbilitiesById(hero['id']);
  }

  Widget _buildAbilityImage(String imageUrl) {
    return Image.network(
      'https://cdn.cloudflare.steamstatic.com$imageUrl',
      errorBuilder: (context, error, stackTrace) {
        return const SizedBox.shrink();
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic> hero = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          hero['localized_name'] ?? 'Unknown Hero',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(225, 15, 76, 117).withOpacity(.1),
                        offset: const Offset(8, 8),
                        blurRadius: 10,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/img/heroes/${hero['localized_name']}.png',
                    scale: 1.2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AttributeStatsWidget(
                      attribute: 'Strength',
                      hero: hero,
                    ),
                    AttributeStatsWidget(
                      attribute: 'Agility',
                      hero: hero,
                    ),
                    AttributeStatsWidget(
                      attribute: 'Intelligence',
                      hero: hero,
                    ),
                  ],
                ),
              ),
              bar(
                Text(
                  '${calculHeroHp(hero['base_health'], hero['base_str']).toString()}\n'
                  '${calculHeroHpRegen(hero['base_health_regen'],hero['base_str']).toStringAsFixed(1)}'
                ),
                [const Color.fromARGB(255, 12, 90, 15), Colors.green],
              ),
              bar(
                Text(
                  '${calculHeroMp(hero['base_mana'], hero['base_int']).toString()}\n' 
                  '${calculHeroMpRegen(hero['base_mana_regen'], hero['base_int']).toStringAsFixed(1)}'
                ),
                [const Color.fromARGB(255, 12, 15, 90), Colors.blue],
              ),
              labeleContainer(context, 'Stats'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(horizontal: 60),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(225, 27, 38, 44),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(225, 15, 76, 117).withOpacity(.1),
                      offset: const Offset(10, 10),
                      blurRadius: 10,
                      spreadRadius: 10,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromARGB(225, 15, 76, 117),
                  ),
                ),
                child: Column(
                  children: [
                    stat(
                      'Armor: ${calculHeroArmor(hero['base_armor'], hero['base_agi']).toStringAsFixed(1)}',
                      'assets/img/icons/Armor_icon.png',
                    ),
                    stat(
                      'Magic Resist: ${hero['base_mr'] ?? 'N/A'}',
                      'assets/img/icons/MagResist_icon.png',
                    ),
                    stat(
                      'Move Speed: ${hero['move_speed'] ?? 'N/A'}',
                      'assets/img/icons/MS_icon.png',
                    ),
                    stat(
                      'Attack Speed: ${hero['base_attack_time'] ?? 'N/A'}',
                      'assets/img/icons/AttackSpeed_icon.png',
                    ),
                    stat(
                      'Attack Range: ${hero['attack_range'] ?? 'N/A'}',
                      'assets/img/icons/AttackRange_icon.png',
                    ),
                  ],
                ),
              ),
              labeleContainer(context, 'Spells'),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: abilities.entries.length,
                itemBuilder: (context, index) {
                  final ability = abilities.entries.elementAt(index).value;
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(225, 15, 76, 117).withOpacity(.1),
                        ),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.only(
                          left: 5,
                          top: 5,
                          bottom: 5,
                        ),
                        title: Text(
                          ability['dname'] ?? 'No Ability Name',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        leading: _buildAbilityImage(ability['img']),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: const Color.fromARGB(225, 27, 38, 44),
                                content: SizedBox(
                                  width: 300,
                                  height: 600,
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          _buildAbilityImage(ability['img']),
                                          Text(
                                            ability['dname'] ?? 'No Ability Name',
                                            style: const TextStyle(
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black,
                                                  offset: Offset(1, 1),
                                                  blurRadius: 2,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          labeleContainer(context, 'Description'),
                                          Text(ability['desc'] ?? 'No Description'),
                                          labeleContainer(context, 'Stats'),
                                          Padding(
                                            padding: const EdgeInsets.only(bottom: 5),
                                            child: Text(
                                              'Damage Type: ${ability['dmg_type'] ?? 'N/A'}',
                                            ),
                                          ),
                                          ListView.builder(
                                            shrinkWrap: true,
                                            physics: const NeverScrollableScrollPhysics(),
                                            itemCount: ability['attrib'].length,
                                            itemBuilder: (context, index) {
                                              final attrib = ability['attrib'][index];
                                              return Padding(
                                                padding: const EdgeInsets.only(bottom: 5),
                                                child: Text('${attrib['header']} : ${attrib['value']}'),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    )
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
