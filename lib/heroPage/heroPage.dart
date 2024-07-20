import 'package:flutter/material.dart';
part 'functions.dart';

class HeroPage extends StatelessWidget {
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
                    attributeStats(
                      'assets/img/attribute/Strength_attribute_symbol.png',
                      Text(hero['base_str']?.toString() ?? 'N/A'),
                    ),
                    attributeStats(
                      'assets/img/attribute/Agility_attribute_symbol.png',
                      Text(hero['base_agi']?.toString() ?? 'N/A'),
                    ),
                    attributeStats(
                      'assets/img/attribute/Intelligence_attribute_symbol.png',
                      Text(hero['base_int']?.toString() ?? 'N/A'),
                    ),
                  ],
                ),
              ),
              bar(
                Text('${hero['base_health'] ?? 'N/A'}\n${hero['base_health_regen'] ?? 'N/A'}'),
                [const Color.fromARGB(255, 12, 90, 15), Colors.green],
              ),
              bar(
                Text('${hero['base_mana'] ?? 'N/A'}\n${hero['base_mana_regen'] ?? 'N/A'}'),
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
                      'Armor (EHP): ${hero['base_armor'] ?? 'N/A'}',
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
                itemCount: hero['spells']?.length ?? 0,
                itemBuilder: (context, index) {
                  final dynamic thisSpell = hero['spells'][index];
                  return DecoratedBox(
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
                        thisSpell.name,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      leading: Image.network(thisSpell.icon),
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
                                        Image.network(thisSpell.icon),
                                        Text(
                                          thisSpell.name,
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
                                        Text(thisSpell.description ?? 'No Description'),
                                        labeleContainer(context, 'Stats'),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            'Damage Type: ${thisSpell.damageType ?? 'N/A'}',
                                          ),
                                        ),
                                        ListView.builder(
                                          shrinkWrap: true,
                                          physics: const NeverScrollableScrollPhysics(),
                                          itemCount: thisSpell.fields?.length ?? 0,
                                          itemBuilder: (context, index) {
                                            final field = thisSpell.fields[index];
                                            return Padding(
                                              padding: const EdgeInsets.only(bottom: 5),
                                              child: Text(field),
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
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}